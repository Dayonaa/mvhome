import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/widgets/extension_widget.dart';

class Loading {
  static Future<void> show({
    required Future<dynamic> Function() asyncFunction,
    String? title,
  }) async {
    await Get.showOverlay(
      asyncFunction: asyncFunction,
      loadingWidget: Material(
        color: Colors.black.withAlpha(130),
        child: Center(
          child: Container(
              width: Get.width / 1.8,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 30,
                children: [
                  CircularProgressIndicator(
                      backgroundColor: Colors.grey, color: AppColors.secondary),
                  (title ?? "Please wait").toTitleLarge()
                ],
              )),
        ),
      ),
    );
  }
}
