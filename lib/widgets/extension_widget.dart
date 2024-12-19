import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension StringWidget on String {
  Widget toAvatar({
    double? radius,
    double? fontSize,
  }) {
    return CircleAvatar(
        radius: radius ?? 15,
        backgroundColor: Colors.white,
        child: Text(
          this,
          style: Get.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ));
  }

  Image toImageAsset() {
    return Image.asset(this, fit: BoxFit.cover);
  }

  Text toHeadlineLarge({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.headlineLarge?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toHeadlineMedium({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.headlineMedium?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toHeadlineSmall({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.headlineSmall?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toDisplayLarge({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.displayLarge?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toDisplayMedium({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.displayMedium?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toDisplaySmall({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.displaySmall?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toTitleLarge({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.titleLarge?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toTitleMedium({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.titleMedium?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toTitleSmall({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.titleSmall?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toLabelLarge({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.labelLarge?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toLabelMedium({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.labelMedium?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toLabelSmall({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: Get.textTheme.labelSmall?.copyWith(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }

  Text toNormalText({
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      style: TextStyle(color: color, fontWeight: fontWeight),
    );
  }
}

extension DynamicWidget on Widget {
  Widget toCircleAvatar({double? height}) {
    return Container(
        height: height ?? 50,
        width: height ?? 50,
        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all()),
        child: this);
  }
}
