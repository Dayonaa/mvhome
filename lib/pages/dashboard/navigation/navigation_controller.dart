import 'package:flutter/cupertino.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:mvhome/controllers/user_controller.dart';
import 'package:mvhome/pages/dashboard/history/history.dart';
import 'package:mvhome/pages/dashboard/history/history_controller.dart';
import 'package:mvhome/pages/dashboard/home/home.dart';
import 'package:mvhome/pages/dashboard/home/home_controller.dart';
import 'package:mvhome/pages/dashboard/products/products.dart';
import 'package:mvhome/pages/dashboard/products/products_controller.dart';
import 'package:mvhome/pages/dashboard/profile/profile.dart';
import 'package:mvhome/pages/dashboard/profile/profile_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/mv_icons.dart';
import 'package:mvhome/services/auth_services.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class NavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProductsController());
    Get.lazyPut(() => HistoryController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => UserController());
  }
}

class NavigationController extends GetxController {
  final GlobalKey<NavigatorState> _homeNv = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _productNv = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _historyNv = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _profileNv = GlobalKey<NavigatorState>();
  PersistentTabController tabController =
      PersistentTabController(initialIndex: 0);
  RxInt initialIndex = 0.obs;
  final HomeController homeController = Get.find();
  final ProductsController productsController = Get.find();
  final HistoryController historyController = Get.find();
  final ProfileController profileController = Get.find();

  GlobalKey<NavigatorState>? navKey(int i) {
    switch (i) {
      case 0:
        return _homeNv;
      case 1:
        return _productNv;
      case 2:
        return _historyNv;
      case 3:
        return _profileNv;
      default:
        return null;
    }
  }

  List<Widget> buildScreens() {
    return [
      Home(),
      Products(),
      History(),
      Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(MvIcons.home),
        title: (AppTranslations.home),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: "/",
        //   routes: {
        //     "/first": (final context) => const MainScreen2(),
        //   },
        // ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(MvIcons.product),
        title: (AppTranslations.package),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(MvIcons.history),
        title: (AppTranslations.history),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(MvIcons.profile),
        title: (AppTranslations.profile),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  void Function(int) onItemSelected() {
    return (i) {
      tabController.jumpToTab(i);
      initialIndex.value = i;
    };
  }

  ScrollController scrollController(int i) {
    switch (i) {
      case 0:
        return homeController.scrollController;
      case 1:
        return productsController.scrollController;
      case 2:
        return historyController.scrollController;
      case 3:
        return profileController.scrollController;
      default:
        return ScrollController();
    }
  }
}
