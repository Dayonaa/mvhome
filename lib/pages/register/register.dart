// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/register/register_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/normal_scaffold.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/primary_form_fields.dart';

class Register extends GetView<RegisterController> {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalScaffold(
        title: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTranslations.createAccount.toHeadlineMedium(),
            AppTranslations.createAccountInfo
                .toLabelLarge(color: AppColors.primaryGrey)
          ],
        ),
        child: Obx(() {
          if (controller.fullNameHasFocus.value ||
              controller.phoneHasFocus.value ||
              controller.emailHasFocus.value ||
              controller.passwordHasFocus.value) {
            return SingleChildScrollView(
              child: Body(),
            );
          }
          return Body();
        }));
  }

  Padding Body() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 50,
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
                        textInputType: controller.textInputType(i),
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
                  PrimaryButton(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      onPressed: controller.submitForm,
                      color: !controller.formNotEmpty.value
                          ? AppColors.primaryLightGrey
                          : AppColors.secondary,
                      child: AppTranslations.createNewAccount.toTitleLarge(
                          color: controller.formNotEmpty.value
                              ? Colors.white
                              : AppColors.primaryGrey,
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
              AppTranslations.haveAccount.toTitleMedium(
                  color: AppColors.primaryGrey, fontWeight: FontWeight.normal),
              GestureDetector(
                onTap: () => Get.offAllNamed("/login"),
                child: AppTranslations.loginNow.toTitleMedium(
                    fontWeight: FontWeight.normal, color: AppColors.blue),
              )
            ],
          )
        ],
      ),
    );
  }
}
