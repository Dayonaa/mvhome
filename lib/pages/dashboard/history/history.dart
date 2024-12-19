import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/dashboard/history/history_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/gradients.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';

class History extends GetView<HistoryController> {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverScaffold(
      toolbar: AppTranslations.transactionHistory
          .toHeadlineLarge(color: Colors.white),
      toolbarHeight: 100,
      scrollController: controller.scrollController,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          children: [
            Container(
              width: Get.width,
              padding: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.3, image: AssetImage(LOGO), scale: 0.4),
                  borderRadius: BorderRadius.circular(10),
                  gradient: AppGradients.secondaryGradient),
              child: CONFUSED.toImageAsset(),
            ),
            AppTranslations.noTransactionHistory.toTitleMedium(
                color: Colors.white, textAlign: TextAlign.center),
            SizedBox(height: 30),
            PrimaryButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                minWidth: Get.width,
                child: AppTranslations.buyPackage
                    .toTitleLarge(fontWeight: FontWeight.normal),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
