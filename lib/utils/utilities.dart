import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/dashboard/navigation/navigation_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Utilities {
  static void pushPage(
    Widget page, {
    bool? withNavBar = false,
  }) {
    try {
      final NavigationController nv = Get.find();
      PersistentNavBarNavigator.pushNewScreen(
          nv.navKey(nv.initialIndex.value)!.currentContext!,
          withNavBar: withNavBar,
          screen: page);
    } catch (e) {
      print(e);
    }
  }
}
