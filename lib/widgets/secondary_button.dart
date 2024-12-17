import 'package:flutter/material.dart';
import 'package:mvhome/res/colors.dart';

class SecondaryButton extends StatelessWidget {
  final Color? color;
  final Widget child;
  final VoidCallback onPressed;
  final double? rounded;
  final double? minWidth;
  final EdgeInsets? padding;

  const SecondaryButton({
    super.key,
    this.color,
    required this.child,
    required this.onPressed,
    this.rounded,
    this.minWidth,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: padding,
      minWidth: minWidth,
      elevation: 0.0,
      onPressed: onPressed,
      color: color ?? AppColors.primary,
      shape:
          OutlineInputBorder(borderRadius: BorderRadius.circular(rounded ?? 6)),
      child: child,
    );
  }
}
