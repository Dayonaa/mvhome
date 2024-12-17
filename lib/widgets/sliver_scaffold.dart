import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/res/gradients.dart';

class SliverScaffoldController extends GetxController {
  RxBool isScrolledBeyondThreshold = false.obs;
  double threshold = 100.0;
}

class SliverScaffold extends GetView<SliverScaffoldController> {
  final Widget? sliverChild;
  final Widget flexibleAppBar;
  final ScrollController scrollController;
  const SliverScaffold(
      {required this.flexibleAppBar,
      this.sliverChild,
      required this.scrollController,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.primaryGradient,
        ),
        child: SafeArea(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              Obx(() {
                return SliverAppBar(
                  backgroundColor: AppColors.primaryLight,
                  forceMaterialTransparency:
                      controller.isScrolledBeyondThreshold.value ? false : true,
                  pinned: true,
                  expandedHeight: controller.threshold,
                  flexibleSpace: FlexibleSpaceBar(
                      titlePadding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      title: flexibleAppBar),
                );
              }),
              SliverToBoxAdapter(
                child: sliverChild,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
