import 'package:get/get.dart';
import 'package:mvhome/controllers/user_controller.dart';
import 'package:mvhome/data/login_data.dart';
import 'package:mvhome/data/user.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/utils/storage.dart';
import 'package:mvhome/widgets/custom_snackbar.dart';

class AuthService extends GetConnect {
  @override
  void onInit() async {
    httpClient.baseUrl = BASE_URL;
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['Accept'] = "application/json";
      return request;
    });
    super.onInit();
  }

  Future<void> login({required LoginRequest loginRequest}) async {
    final response = await post(
      '/auth/login',
      loginRequest.toJson(),
    );

    if (response.statusCode == 200 && response.body != null) {
      var loginResponse = LoginResponse.fromJson(response.body);
      await Storage.writeToken(loginResponse.data?.token);
      Get.offAllNamed("/");
    } else {
      throw "${response.statusText}";
    }
  }

  Future<void> refreshToken() async {
    if (Storage.readToken() == null) return;
    useBearerHeader(true);
    final response = await get('/auth/refresh-token');
    if (response.statusCode == 200 && response.body != null) {
      var loginResponse = LoginResponse.fromJson(response.body);
      await Storage.writeToken(loginResponse.data?.token);
      useBearerHeader(false);
      await getUser();
    } else {
      useBearerHeader(false);
      Get.offAllNamed("/login");
      CustomSnackbar.show(message: "${response.statusText}");
    }
  }

  Future<void> getUser() async {
    final UserController userController = Get.find();
    useBearerHeader(true);
    final response = await get('/auth/user');
    if (response.statusCode == 200 && response.body != null) {
      var userResponse = UserResponse.fromJson(response.body);
      userController.updateUser(userResponse);
      useBearerHeader(false);
    } else {
      CustomSnackbar.show(message: "${response.statusText}");
      useBearerHeader(false);
    }
  }

  void useBearerHeader(bool use) {
    httpClient.addRequestModifier<dynamic>((request) {
      if (use) {
        request.headers['Authorization'] = "Bearer ${Storage.readToken()}";
      } else {
        request.headers.remove('Authorization');
      }
      return request;
    });
  }
}
