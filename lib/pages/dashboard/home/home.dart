// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvhome/pages/dashboard/home/home_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/mv_icons.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/widgets/circular_chart.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverScaffold(
        scrollController: controller.scrollController,
        toolbar: _AppBar(),
        toolbarHeight: 100,
        bottomAppBar: _InternetBillWidget(),
        bottomAppBarHeight: Get.height / 2.5,
        child: _Content());
  }

  Row _AppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() => Row(
              spacing: 10,
              children: [
                "${controller.userController.name?[0].toUpperCase()}"
                    .toAvatar(radius: 18),
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    "${AppTranslations.hello} ${controller.userController.name}"
                        .toTitleMedium(
                            color: Colors.white, fontWeight: FontWeight.normal),
                    Card(
                      margin: EdgeInsets.all(0),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: AppTranslations.bronze.toLabelSmall()),
                    ),
                  ],
                ),
              ],
            )),
        CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(
              MvIcons.notifications,
              size: 24,
            )),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTranslations.upgradeInternetPackage.toNormalText(),
                PrimaryButton(
                    rounded: 20,
                    height: 40,
                    child: Row(
                      spacing: 8,
                      children: [
                        AppTranslations.upgrade.toNormalText(
                            color: Colors.white, fontWeight: FontWeight.normal),
                        Icon(
                          CupertinoIcons.add,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                    onPressed: () {})
              ],
            ),
          ),
          Divider(thickness: 2),
          Column(
            children: List.generate(4, (i) {
              return _ItemCard();
            }),
          )
        ],
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTranslations.specialForYou.toTitleLarge(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (i) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PROMO_INET.toImageAsset(),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppTranslations.promo.toTitleLarge())
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _InternetBillWidget extends StatelessWidget {
  const _InternetBillWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTranslations.internetBill.toTitleMedium(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  "------------".toTitleMedium(color: Colors.grey),
                ],
              ),
              PrimaryButton(
                  height: 40,
                  color: AppColors.secondaryLightGrey,
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(
                        MvIcons.account_balance_wallet,
                        color: AppColors.primaryGrey,
                      ),
                      AppTranslations.pay
                          .toLabelMedium(color: AppColors.primaryGrey),
                    ],
                  ),
                  onPressed: () {})
            ],
          ),
          Divider(thickness: 1, color: Colors.black26),

          _UploadDownload(
              chartData: ChartData(
                value1: 34,
                value2: 23,
                maxValue: 100,
              ),
              title: AppTranslations.download.toNormalText(),
              subtitle: Row(
                children: [
                  AppTranslations.pingMs.toNormalText(),
                  SizedBox(width: 15),
                  Icon(
                    MvIcons.download,
                    color: AppColors.yellowPrimary,
                  ),
                  "15".toNormalText(),
                ],
              ),
              speed: 24.5,
              icon: Icons.download,
              color: Colors.yellow),
          _UploadDownload(
              chartData: ChartData(
                value1: 49,
                value2: 10,
                maxValue: 100,
              ),
              title: AppTranslations.upload.toNormalText(),
              subtitle: Row(
                spacing: 4,
                children: [
                  Icon(MvIcons.trending_down, color: AppColors.yellowPrimary),
                  "14".toNormalText(),
                  SizedBox(width: 8),
                  Icon(MvIcons.trending_up),
                  "24".toNormalText(),
                ],
              ),
              speed: 30.5,
              icon: Icons.upload,
              color: Colors.orange),
        ],
      ),
    );
  }
}

class _UploadDownload extends StatelessWidget {
  const _UploadDownload({
    required this.title,
    required this.subtitle,
    required this.speed,
    required this.icon,
    required this.color,
    required this.chartData,
  });

  final Widget title;
  final Widget subtitle;
  final double speed;
  final IconData icon;
  final Color color;
  final ChartData chartData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.secondaryLightGrey,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryGrey),
      ),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularChart(chartData: chartData),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                subtitle,
              ],
            ),
          ),

          // Speed Text
          Text(
            '${speed.toStringAsFixed(1)}Mb',
          ),
        ],
      ),
    );
  }
}
