import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/res/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () => onItemSelected(index),
                child: _BuildNavItem(
                    item: item, isSelected: selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _BuildNavItem extends StatelessWidget {
  const _BuildNavItem({
    required this.item,
    required this.isSelected,
  });

  final PersistentBottomNavBarItem item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? item.activeColorPrimary
                      : item.inactiveColorPrimary),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                decoration: isSelected
                    ? BoxDecoration(
                        color: AppColors.veryLightPurple,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20))
                    : null,
                child: item.icon,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                "${item.title}",
                style: Get.textTheme.labelSmall?.copyWith(
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected
                        ? item.activeColorPrimary
                        : item.activeColorSecondary),
              )),
            ),
          )
        ],
      ),
    );
  }
}
