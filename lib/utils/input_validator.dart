import 'package:mvhome/res/app_translations.dart';

class InputValidator {
  static String? validateUserId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppTranslations.userIdMinLength;
    }
    if (value.length < 5) {
      return AppTranslations.userIdMinLength;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppTranslations.emailRequired;
    }
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!emailRegex.hasMatch(value)) {
      return AppTranslations.emailInvalid;
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppTranslations.phoneNumberRequired;
    }
    final phoneRegex = RegExp(r'^[0-9]+$');
    if (!phoneRegex.hasMatch(value)) {
      return AppTranslations.phoneNumberInvalid;
    }
    if (value.length < 10 || value.length > 15) {
      return AppTranslations.phoneNumberLength;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppTranslations.passwordRequired;
    }
    if (value.length < 8) {
      return AppTranslations.passwordMinLength;
    }
    final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$');
    if (!passwordRegex.hasMatch(value)) {
      return AppTranslations.passwordComplexity;
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppTranslations.nameRequired;
    }
    final nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegex.hasMatch(value)) {
      return AppTranslations.nameInvalid;
    }
    return null;
  }

  static String? validateIdNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppTranslations.idNumberRequired;
    }
    final idRegex = RegExp(r'^[0-9]+$');
    if (!idRegex.hasMatch(value)) {
      return AppTranslations.idNumberInvalid;
    }
    if (value.length < 8 || value.length > 16) {
      return AppTranslations.idNumberLength;
    }
    return null;
  }
}
