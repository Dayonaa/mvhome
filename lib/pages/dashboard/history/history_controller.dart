import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';

class HistoryController extends GetxController {
  ScrollController scrollController = ScrollController();
  final SliverScaffoldController scaffoldController = Get.find();
  final String title = "Riwayat Transaksi";
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

  void _onScroll() {
    final bool hasScrolled =
        scrollController.offset > scaffoldController.threshold;
    if (hasScrolled != scaffoldController.isScrolledBeyondThreshold.value) {
      scaffoldController.isScrolledBeyondThreshold.value = hasScrolled;
    }
  }
}
