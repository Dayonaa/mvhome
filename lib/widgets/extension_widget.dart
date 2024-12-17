import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension StringWidget on String {
  Widget toAvatar({double? radius}) {
    return CircleAvatar(
        radius: radius ?? 15,
        backgroundColor: Colors.white,
        child: Text(
          this,
          style:
              Get.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
        ));
  }

  Image toImageAsset() {
    return Image.asset(this, fit: BoxFit.cover);
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

  Text toNormal({
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
