import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/mv_icons.dart';
import 'package:mvhome/utils/input_validator.dart';

class ProfileController extends GetxController {
  ScrollController scrollController = ScrollController();
  final _fullName = TextEditingController();
  final _dob = TextEditingController();
  final _gender = TextEditingController();
  final hints = [
    AppTranslations.enterFullName,
    "Masukan tanggal lahir",
    "Kelamin"
  ];
  Icon? suffixIcon(int i) {
    switch (i) {
      case 0:
        return Icon(
          Icons.edit,
          color: AppColors.primaryGrey,
        );
      case 1:
        return Icon(MvIcons.date_range, size: 14, color: AppColors.primaryGrey);
      case 2:
        return Icon(
          CupertinoIcons.arrow_down,
          color: AppColors.primaryGrey,
        );
      default:
        return null;
    }
  }

  TextEditingController? textEditingController(int i) {
    switch (i) {
      case 0:
        return _fullName;
      case 1:
        return _dob;
      case 2:
        return _gender;
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
      default:
        return null;
    }
  }
}
