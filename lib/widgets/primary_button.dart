import 'package:flutter/material.dart';
import 'package:mvhome/res/colors.dart';

class PrimaryButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onPressed;
  final Widget child;
  final double? rounded;
  final double? width;
  final EdgeInsets? padding;
  final double? height;

  const PrimaryButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.child,
    this.rounded,
    this.width,
    this.padding,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 50,
      child: MaterialButton(
        padding: padding,
        elevation: 0.0,
        onPressed: onPressed,
        color: color ?? AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rounded ?? 6),
        ),
        child: child,
      ),
    );
  }
}
