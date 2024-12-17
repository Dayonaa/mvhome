import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  final SliverScaffoldController scaffoldController = Get.find();
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
