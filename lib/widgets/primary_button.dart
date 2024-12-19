import 'package:flutter/material.dart';
import 'package:mvhome/res/colors.dart';

class PrimaryButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onPressed;
  final Widget child;
  final double? rounded;
  final double? minWidth;
  final EdgeInsets? padding;

  const PrimaryButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.child,
    this.rounded,
    this.minWidth,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      padding: padding,
      elevation: 0.0,
      onPressed: onPressed,
      color: color ?? AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(rounded ?? 6),
      ),
      child: child,
    );
  }
}
