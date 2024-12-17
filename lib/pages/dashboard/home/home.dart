import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvhome/pages/dashboard/home/home_controller.dart';
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
        flexibleAppBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 10,
              children: [
                "SB".toAvatar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    "Halo Sebastian".toTitleSmall(color: Colors.white),
                    Card(
                      margin: EdgeInsets.all(0),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: "Bronze".toLabelSmall()),
                    ),
                  ],
                ),
              ],
            ),
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  MvIcons.notifications,
                  size: 18,
                )),
          ],
        ),
        sliverChild: Column(
          spacing: 20,
          children: [
            _InternetBillWidget(),
            _Content(),
          ],
        ));
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
                Text("Upgrade paket internet"),
                PrimaryButton(
                    rounded: 20,
                    child: Row(
                      spacing: 8,
                      children: [
                        Text(
                          "Upgrade",
                          style: Get.textTheme.labelMedium
                              ?.copyWith(color: Colors.white),
                        ),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Spesial untukmu".toTitleLarge(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (i) => Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  PROMO_INET.toImageAsset(),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: "Promo".toTitleLarge())
                                ],
                              ),
                            )),
                  ),
                ),
                SizedBox(height: 10),
                "Spesial untuk bapakmu".toTitleLarge(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (i) => Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  PROMO_INET.toImageAsset(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: "Promo".toTitleLarge(),
                                  )
                                ],
                              ),
                            )),
                  ),
                )
              ],
            ),
          )
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
                  Text(
                    'Tagihan Internet',
                    style:
                        Get.textTheme.titleMedium?.copyWith(color: Colors.grey),
                  ),
                  "------------".toTitleMedium(),
                ],
              ),
              PrimaryButton(
                  color: Colors.grey[100],
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(
                        MvIcons.account_balance_wallet,
                        color: Colors.grey,
                      ),
                      "Bayar".toLabelMedium(color: Colors.grey),
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
              title: "Download".toNormal(),
              subtitle: Row(
                children: [
                  "Ping ms".toNormal(),
                  SizedBox(width: 15),
                  Icon(
                    MvIcons.download,
                    color: AppColors.yellowPrimary,
                  ),
                  "15".toNormal(),
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
              title: "Upload".toNormal(),
              subtitle: Row(
                spacing: 4,
                children: [
                  Icon(MvIcons.trending_down, color: AppColors.yellowPrimary),
                  "14".toNormal(),
                  SizedBox(width: 8),
                  Icon(MvIcons.trending_up),
                  "24".toNormal(),
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
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
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
