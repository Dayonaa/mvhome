import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/res/colors.dart';

class CustomSnackbar {
  static show({String? title, String? message}) {
    Get.snackbar("Terjadi Kesalahan", "$message",
        backgroundColor: AppColors.primary, colorText: Colors.white);
  }
}
