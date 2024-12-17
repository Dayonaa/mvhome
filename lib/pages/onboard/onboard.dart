import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/onboard/data/banner_data.dart';
import 'package:mvhome/pages/onboard/onboard_controller.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/gradients.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/main_scaffold.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/secondary_button.dart';

class Onboard extends GetView<OnboardController> {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalScaffold(
        title: "Selamat Datang \ndi MVHOME!".toTitleLarge(),
        actions: SecondaryButton(
          onPressed: () => Get.offAllNamed("/"),
          rounded: 8,
          color: AppColors.veryLightPurple,
          child: "Skip".toLabelLarge(fontWeight: FontWeight.normal),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 20,
                children: [
                  SizedBox(
                    height: Get.height / 2.5,
                    child: CarouselView(
                        itemSnapping: true,
                        controller: controller.carouselController,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        itemExtent: Get.width,
                        children: List.generate(3, (i) {
                          return _Banner(
                            bannerData: BannerData(
                                backgroundImage:
                                    controller.bannerData(i).backgroundImage,
                                foregroundImage:
                                    controller.bannerData(i).foregroundImage,
                                beforeForegroundImage: controller
                                    .bannerData(i)
                                    .beforeForegroundImage,
                                positionedChild:
                                    controller.bannerData(i).positionedChild),
                          );
                        })),
                  ),
                  Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (i) {
                      return Obx(() {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: controller.currentPage.value == i ? 30 : 10,
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(20),
                              color: controller.currentPage.value == i
                                  ? AppColors.yellowPrimary
                                  : const Color.fromARGB(255, 247, 235, 186)),
                        );
                      });
                    }),
                  )
                ],
              ),
              Column(spacing: 20, children: [
                "Pilih dari berbagai paket yang cocok untuk kebutuhan rumahmu, dari streaming hingga gaming"
                    .toLabelLarge(
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.center),
                PrimaryButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: AppColors.secondary,
                    minWidth: Get.width,
                    onPressed: controller.next(),
                    child: "Next".toTitleLarge(
                        color: Colors.white, fontWeight: FontWeight.normal)),
                PrimaryButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.grey[200],
                    minWidth: Get.width,
                    child: "Daftar Akun"
                        .toTitleLarge(fontWeight: FontWeight.normal),
                    onPressed: () {})
              ])
            ],
          ),
        ));
  }
}

class _Banner extends StatelessWidget {
  final BannerData bannerData;

  const _Banner({required this.bannerData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          gradient: AppGradients.secondaryGradient,
          image: DecorationImage(
              image: AssetImage(LOGO), scale: 0.5, opacity: 0.3)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          bannerData.beforeForegroundImage?.toImageAsset() ?? Container(),
          SizedBox(
              width: Get.width,
              child: bannerData.foregroundImage.toImageAsset()),
          ...bannerData.positionedChild.map((label) => Positioned(
                top: label.top,
                bottom: label.bottom,
                left: label.left,
                right: label.right,
                child: label.child,
              )),
        ],
      ),
    );
  }
}
