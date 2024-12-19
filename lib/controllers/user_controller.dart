import 'package:get/get.dart';
import 'package:mvhome/data/user.dart';

class UserController extends GetxController {
  Rx<UserResponse?> user = Rx(null);

  String? get name => user.value?.data?.user?.roles?[0]?.name;
  String? get email => user.value?.data?.user?.email;

  void updateUser(UserResponse userResponse) {
    user.value = userResponse;
  }

  void removeUser() {
    user.value = null;
  }
}
