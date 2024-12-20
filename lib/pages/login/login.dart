// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/login/login_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/normal_scaffold.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/primary_form_fields.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalScaffold(
      title: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTranslations.welcomeBack.toHeadlineMedium(),
          AppTranslations.loginMessage
              .toLabelLarge(color: AppColors.primaryGrey)
        ],
      ),
      child: Obx(() {
        if (controller.userHasFocus.value ||
            controller.passwordHasFocus.value) {
          return SingleChildScrollView(child: Body());
        }
        return Body();
      }),
    );
  }

  Widget Body() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            spacing: 30,
            children: [
              Form(
                  key: controller.formKey,
                  child: Column(
                    spacing: 20,
                    children: List.generate(controller.hints.length, (i) {
                      return PrimaryFormFields(
                        focusNode: controller.focusNode(i),
                        textInputAction: controller.textInputAction(i),
                        hintTexts: controller.hints[i],
                        editingControllers: controller.textEditingController(i),
                        validators: controller.validator(i),
                        prefixIcons: controller.prefixIcon(i),
                        obsecured: controller.obsecured(i).value,
                        suffixIcons: controller.suffixIcon(i),
                        onEditingComplete: controller.onEditingComplete(i),
                      );
                    }),
                  )),
              Column(
                spacing: 20,
                children: [
                  Obx(() => PrimaryButton(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      onPressed: controller.submit,
                      color: !controller.formNotEmpty.value
                          ? AppColors.primaryLightGrey
                          : AppColors.secondary,
                      child: AppTranslations.login.toTitleLarge(
                          color: controller.formNotEmpty.value
                              ? Colors.white
                              : AppColors.primaryGrey,
                          fontWeight: FontWeight.normal))),
                  PrimaryButton(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      onPressed: () {},
                      color: AppColors.primaryLightGrey,
                      child: AppTranslations.forgotPassword.toTitleLarge(
                          color: AppColors.primaryGrey,
                          fontWeight: FontWeight.normal)),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(child: Divider()),
                      AppTranslations.or
                          .toTitleSmall(fontWeight: FontWeight.normal),
                      Expanded(child: Divider()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Image.asset(GOOGLE).toCircleAvatar(),
                      Image.asset(FACEBOOK).toCircleAvatar(),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTranslations.dontHaveAccount.toTitleMedium(
                  color: AppColors.primaryGrey, fontWeight: FontWeight.normal),
              GestureDetector(
                onTap: () => Get.toNamed("/register"),
                child: AppTranslations.registerNow.toTitleMedium(
                    fontWeight: FontWeight.normal, color: AppColors.blue),
              )
            ],
          )
        ],
      ),
    );
  }
}
