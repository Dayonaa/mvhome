import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mvhome/pages/dashboard/history/history.dart';
import 'package:mvhome/pages/dashboard/home/home.dart';
import 'package:mvhome/pages/dashboard/navigation/navigation_controller.dart';
import 'package:mvhome/pages/dashboard/products/products.dart';
import 'package:mvhome/pages/dashboard/profile/profile.dart';
import 'package:mvhome/widgets/custom_nav_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Navigation extends GetView<NavigationController> {
  const Navigation({super.key});
  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(context, onWillPop: (ctx) {
      exit(0);
    },
        handleAndroidBackButtonPress: false,
        controller: controller.tabController,
        screens: [
          CustomNavBarScreen(
            screen: Home(),
          ),
          CustomNavBarScreen(
            screen: Products(),
          ),
          CustomNavBarScreen(
            screen: History(),
          ),
          CustomNavBarScreen(
            screen: Profile(),
          ),
        ],
        itemCount: 4,
        isVisible: true,
        backgroundColor: Colors.grey.shade900,
        navBarHeight: 80.0,
        customWidget: Obx(() => CustomNavBar(
              items: controller.navBarsItems(),
              onItemSelected: controller.onItemSelected(),
              selectedIndex: controller.initialIndex.value,
            )));
  }
}
