// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/dashboard/profile/profile_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/utils/storage.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/primary_form_fields.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';

class Profile extends GetView<ProfileController> {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverScaffold(
      toolbar: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTranslations.profile.toHeadlineMedium(color: Colors.white),
          _AppBar(),
        ],
      ),
      toolbarHeight: Get.height / 6,
      scrollController: controller.scrollController,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  "Pengaturan akun"
                      .toTitleMedium(fontWeight: FontWeight.normal),
                  Column(
                    spacing: 10,
                    children: List.generate(controller.hints.length, (i) {
                      return PrimaryFormFields(
                        hintTexts: controller.hints[i],
                        validators: controller.validator(i),
                        prefixIcons: null,
                        obsecured: false,
                        suffixIcons: controller.suffixIcon(i),
                        fillColor: AppColors.secondaryLightGrey,
                      );
                    }),
                  ),
                ],
              ),
              Column(
                spacing: 20,
                children: [
                  PrimaryButton(
                      width: Get.width,
                      color: AppColors.secondary,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      onPressed: () => {},
                      child: "Simpan Infomasi".toTitleLarge(
                          color: Colors.white, fontWeight: FontWeight.normal)),
                  PrimaryButton(
                      width: Get.width,
                      color: AppColors.secondary,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      onPressed: () async {
                        await Storage.writeToken(null);
                        Get.offAllNamed("/login");
                      },
                      child: "Keluar".toTitleLarge(
                          color: Colors.white, fontWeight: FontWeight.normal)),
                ],
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Row _AppBar() {
    return Row(
      spacing: 10,
      children: [
        "SB".toAvatar(radius: 18),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            "${AppTranslations.hello} Sebastian".toTitleMedium(
                color: Colors.white, fontWeight: FontWeight.normal),
            Card(
              margin: EdgeInsets.all(0),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: AppTranslations.bronze.toLabelSmall()),
            ),
          ],
        ),
      ],
    );
  }
}
