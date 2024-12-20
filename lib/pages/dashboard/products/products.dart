import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/dashboard/products/products_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/res/colors.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/primary_button.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';

class Products extends GetView<ProductsController> {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverScaffold(
      scrollController: controller.scrollController,
      toolbar:
          AppTranslations.internetProduct.toHeadlineLarge(color: Colors.white),
      toolbarHeight: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 10,
          children: List.generate(10, (i) => _ProductItem()),
        ),
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.primaryLightGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.secondary,
                          Color.fromARGB(255, 52, 52, 107),
                          AppColors.secondary
                        ],
                        stops: [0, 0.5, 1],
                        begin: Alignment(1.0, 0.25),
                        end: Alignment.centerLeft,
                      ),
                    ),
                    child: Column(
                      children: [
                        "30".toTitleLarge(color: Colors.white),
                        AppTranslations.mbps.toTitleMedium(color: Colors.white),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTranslations.bronzePackages.toTitleMedium(),
                        "Excepteur Lorem sunt veniam ut ut ea. Consectetur commodo qui tempor anim amet esse voluptate. Sunt nulla esse voluptate exercitation labore sunt magna elit do et sint."
                            .toLabelMedium(color: AppColors.primaryGrey),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                "Rp.230.000".toTitleLarge(),
                PrimaryButton(
                    height: 40,
                    onPressed: () {},
                    rounded: 4,
                    color: AppColors.primaryLightGrey,
                    child: AppTranslations.buyPackage
                        .toLabelLarge(color: AppColors.primaryGrey))
              ],
            ),
          )
        ],
      ),
    );
  }
}
