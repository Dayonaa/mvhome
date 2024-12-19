import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/data/login_data.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/mv_icons.dart';
import 'package:mvhome/services/auth_services.dart';
import 'package:mvhome/utils/input_validator.dart';
import 'package:mvhome/widgets/custom_snackbar.dart';
import 'package:mvhome/widgets/loading.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthService());
  }
}

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final AuthService _authService = Get.find<AuthService>();
  final hints = [AppTranslations.enterUserId, AppTranslations.enterPassword];
  final _userId = TextEditingController();
  final _password = TextEditingController();
  final _userFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final RxBool _passwordObsecured = true.obs;
  final RxBool userHasFocus = false.obs;
  final RxBool passwordHasFocus = false.obs;
  RxBool formNotEmpty = false.obs;

  RxBool obsecured(int i) {
    switch (i) {
      case 0:
        return false.obs;
      case 1:
        return _passwordObsecured;
      default:
        return false.obs;
    }
  }

  TextEditingController? textEditingController(int i) {
    switch (i) {
      case 0:
        return _userId;
      case 1:
        return _password;
      default:
        return null;
    }
  }

  TextInputAction? textInputAction(int i) {
    switch (i) {
      case 0:
        return TextInputAction.next;
      case 1:
        return TextInputAction.done;
      default:
        return null;
    }
  }

  String? Function(String?)? validator(int i) {
    switch (i) {
      case 0:
        return InputValidator.validateUserId;
      default:
        return null;
    }
  }

  Icon? prefixIcon(int i) {
    switch (i) {
      case 0:
        return Icon(MvIcons.profile,
            color: userHasFocus.value ? Colors.black : AppColors.primaryGrey);
      default:
        return null;
    }
  }

  Widget? suffixIcon(int i) {
    switch (i) {
      case 1:
        return GestureDetector(
          onTap: () => _passwordObsecured.value = !_passwordObsecured.value,
          child: Icon(MvIcons.eye,
              color: _passwordObsecured.value
                  ? AppColors.primaryGrey
                  : Colors.black),
        );
      default:
        return null;
    }
  }

  FocusNode? focusNode(int i) {
    switch (i) {
      case 0:
        return _userFocusNode;
      case 1:
        return _passwordFocusNode;
      default:
        return null;
    }
  }

  void Function()? onEditingComplete(int i) {
    switch (i) {
      case 0:
        return () {
          _userFocusNode.nextFocus();
        };
      case 1:
        return () {
          _passwordFocusNode.unfocus();
        };
      default:
        return null;
    }
  }

  void checkForm() {
    formNotEmpty.value = !(_userId.text.isEmpty || _password.text.isEmpty);
  }

  Future<void> submit() async {
    if (!formNotEmpty.value) return;
    if (!(formKey.currentState?.validate() ?? false)) return;
    await Loading.show(
      asyncFunction: () async {
        try {
          await _authService.login(
              loginRequest:
                  LoginRequest(email: "user@gmail.com", password: "test123"));
        } on String catch (e) {
          CustomSnackbar.show(message: e);
        } catch (e) {
          CustomSnackbar.show(message: e.toString());
        }
      },
    );
  }

  @override
  void onInit() {
    _userFocusNode.addListener(() {
      userHasFocus.value = _userFocusNode.hasFocus;
    });
    _passwordFocusNode.addListener(() {
      passwordHasFocus.value = _passwordFocusNode.hasFocus;
    });
    _userId.addListener(checkForm);
    _password.addListener(checkForm);
    super.onInit();
  }

  @override
  void dispose() {
    _userFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }
}
