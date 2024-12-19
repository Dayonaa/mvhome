import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  ScrollController scrollController = ScrollController();

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
