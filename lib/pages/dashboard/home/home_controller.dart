import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvhome/controllers/user_controller.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  final UserController userController = Get.find();
  @override
  void onInit() {
    scrollController.addListener(_onScroll);
    super.onInit();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {}
}
