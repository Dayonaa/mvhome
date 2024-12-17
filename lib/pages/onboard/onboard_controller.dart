import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/onboard/data/banner_data.dart';
import 'package:mvhome/res/mv_icons.dart';
import 'package:mvhome/utils/constant.dart';
import 'package:mvhome/widgets/transparant_circle_label.dart';
import 'package:mvhome/widgets/transparant_rounded_label.dart';

class OnboardBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardController());
  }
}

class OnboardController extends GetxController {
  final CarouselController carouselController = CarouselController();
  double carouselPosition = 0;
  double get initialExtent => carouselController.position.extentInside;
  RxInt currentPage = 0.obs;

  void Function() next() {
    return () {
      carouselPosition += initialExtent;
      carouselController.animateTo(carouselPosition,
          duration: Duration(seconds: 1), curve: Curves.ease);
    };
  }

  BannerData bannerData(int i) {
    switch (i) {
      case 0:
        return BannerData(
            backgroundImage: LOGO,
            foregroundImage: WELCOME,
            beforeForegroundImage: ORNAMENT,
            positionedChild: [
              PositionedIconLabel(
                top: 60,
                left: 0,
                child: TransparentRoundedLabel(
                    text: "Internet Stabil", icon: MvIcons.support),
              ),
              PositionedIconLabel(
                bottom: 120,
                left: 10,
                child: TransparentRoundedLabel(
                    text: "Layanan 24jam", icon: MvIcons.chart),
              ),
              PositionedIconLabel(
                  bottom: 60,
                  right: 0,
                  child: TransparentRoundedLabel(
                      text: "Jaringan Fiber Optik", icon: MvIcons.round_chart)),
              PositionedIconLabel(
                  top: 110,
                  right: 0,
                  child: TransparentRoundedLabel(
                      text: "Internet Unlimited", icon: MvIcons.support)),
            ]);
      case 1:
        return BannerData(
            backgroundImage: LOGO,
            foregroundImage: WELCOME_2,
            positionedChild: [
              PositionedIconLabel(
                top: 0,
                left: 80,
                child: TransparentCircleLabel(text: "150Mbps"),
              ),
              PositionedIconLabel(
                bottom: 120,
                left: 70,
                child: TransparentCircleLabel(text: "20Mpbs"),
              ),
              PositionedIconLabel(
                  bottom: 20,
                  right: 80,
                  child: TransparentCircleLabel(text: "50Mbps")),
              PositionedIconLabel(
                  top: 30,
                  right: 40,
                  child: TransparentCircleLabel(text: "100Mbps")),
            ]);
      case 2:
        return BannerData(
            backgroundImage: LOGO,
            foregroundImage: WELCOME_3,
            positionedChild: [
              PositionedIconLabel(
                top: 0,
                left: 80,
                child: TransparentCircleLabel(iconData: MvIcons.card_tick),
              ),
              PositionedIconLabel(
                bottom: 120,
                left: 40,
                child: TransparentCircleLabel(iconData: MvIcons.support),
              ),
              PositionedIconLabel(
                  bottom: 50,
                  right: 40,
                  child: TransparentCircleLabel(iconData: MvIcons.info_circle)),
              PositionedIconLabel(
                  top: 30,
                  right: 40,
                  child: TransparentCircleLabel(iconData: MvIcons.chart)),
            ]);
      default:
        return BannerData(
            backgroundImage: LOGO,
            foregroundImage: WELCOME,
            positionedChild: [
              PositionedIconLabel(
                top: 60,
                left: 0,
                child: TransparentRoundedLabel(
                    text: "Internet Stabil", icon: MvIcons.support),
              ),
              PositionedIconLabel(
                bottom: 120,
                left: 10,
                child: TransparentRoundedLabel(
                    text: "Layanan 24jam", icon: MvIcons.chart),
              ),
              PositionedIconLabel(
                  bottom: 60,
                  right: 0,
                  child: TransparentRoundedLabel(
                      text: "Jaringan Fiber Optik", icon: MvIcons.round_chart)),
              PositionedIconLabel(
                  top: 110,
                  right: 0,
                  child: TransparentRoundedLabel(
                      text: "Internet Unlimited", icon: MvIcons.support)),
            ]);
    }
  }

  @override
  void onInit() {
    carouselController.addListener(() {
      carouselPosition =
          (carouselController.offset / initialExtent * initialExtent);
      currentPage.value = (carouselPosition / initialExtent).round().toInt();
    });
    super.onInit();
  }
}
