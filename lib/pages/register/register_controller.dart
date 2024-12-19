import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/mv_icons.dart';
import 'package:mvhome/services/auth_services.dart';
import 'package:mvhome/utils/input_validator.dart';
import 'package:mvhome/widgets/loading.dart';

class RegisterBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => AuthService());
  }
}

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final AuthService _authService = Get.find<AuthService>();
  final hints = [
    AppTranslations.enterFullName,
    AppTranslations.enterPhoneNumber,
    AppTranslations.enterEmail,
    AppTranslations.enterPassword,
  ];
  final _fullName = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _fullNameFocuNode = FocusNode();
  final _phoneFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final RxBool _passwordObsecured = true.obs;
  RxBool fullNameHasFocus = false.obs;
  RxBool phoneHasFocus = false.obs;
  RxBool emailHasFocus = false.obs;
  RxBool passwordHasFocus = false.obs;
  RxBool formNotEmpty = true.obs;
  RxBool obsecured(int i) {
    switch (i) {
      case 3:
        return _passwordObsecured;
      default:
        return false.obs;
    }
  }

  TextEditingController? textEditingController(int i) {
    switch (i) {
      case 0:
        return _fullName;
      case 1:
        return _phone;
      case 2:
        return _email;
      case 3:
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
        return TextInputAction.next;
      case 2:
        return TextInputAction.next;
      case 3:
        return TextInputAction.done;
      default:
        return null;
    }
  }

  TextInputType? textInputType(int i) {
    switch (i) {
      case 0:
        return TextInputType.name;
      case 1:
        return TextInputType.phone;
      case 2:
        return TextInputType.emailAddress;
      case 3:
        return TextInputType.visiblePassword;
      default:
        return null;
    }
  }

  String? Function(String?)? validator(int i) {
    switch (i) {
      case 0:
        return InputValidator.validateName;
      case 1:
        return InputValidator.validatePhoneNumber;
      case 2:
        return InputValidator.validateEmail;
      case 3:
        return InputValidator.validatePassword;
      default:
        return null;
    }
  }

  Icon? prefixIcon(int i) {
    switch (i) {
      case 0:
        return Icon(
          MvIcons.profile,
          color: fullNameHasFocus.value ? Colors.black : AppColors.primaryGrey,
        );
      case 1:
        return Icon(MvIcons.phone62,
            size: 14,
            color: phoneHasFocus.value ? Colors.black : AppColors.primaryGrey);
      case 2:
        return Icon(
          MvIcons.mail_outline,
          color: emailHasFocus.value ? Colors.black : AppColors.primaryGrey,
        );
      default:
        return null;
    }
  }

  Widget? suffixIcon(int i) {
    switch (i) {
      case 3:
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
        return _fullNameFocuNode;
      case 1:
        return _phoneFocusNode;
      case 2:
        return _emailFocusNode;
      case 3:
        return _passwordFocusNode;
      default:
        return null;
    }
  }

  void Function()? onEditingComplete(int i) {
    switch (i) {
      case 0:
        return () {
          _fullNameFocuNode.nextFocus();
        };
      case 1:
        return () {
          _phoneFocusNode.nextFocus();
        };
      case 2:
        return () {
          _emailFocusNode.nextFocus();
        };
      case 3:
        return () {
          _passwordFocusNode.unfocus();
        };
      default:
        return null;
    }
  }

  Future<void> submitForm() async {
    if (!formNotEmpty.value) return;
    if (!(formKey.currentState?.validate() ?? false)) return;
    await Loading.show(
      asyncFunction: () async {
        await Future.delayed(Duration(seconds: 4));
        Get.snackbar("Success", "Form Valid",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      },
    );
  }

  void checkForm() {
    formNotEmpty.value = !(_fullName.text.isEmpty ||
        _phone.text.isEmpty ||
        _email.text.isEmpty ||
        _password.text.isEmpty);
  }

  @override
  void onInit() {
    _fullNameFocuNode.addListener(() {
      fullNameHasFocus.value = _fullNameFocuNode.hasFocus;
    });
    _phoneFocusNode.addListener(() {
      phoneHasFocus.value = _phoneFocusNode.hasFocus;
    });
    _emailFocusNode.addListener(() {
      emailHasFocus.value = _emailFocusNode.hasFocus;
    });
    _passwordFocusNode.addListener(() {
      passwordHasFocus.value = _passwordFocusNode.hasFocus;
    });
    _fullName.addListener(checkForm);
    _phone.addListener(checkForm);
    _email.addListener(checkForm);
    _password.addListener(checkForm);
    super.onInit();
  }

  @override
  void dispose() {
    _fullNameFocuNode.dispose();
    _phoneFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }
}
