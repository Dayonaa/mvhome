import 'package:flutter/material.dart';

class BannerData {
  final String backgroundImage;
  final String foregroundImage;
  final List<PositionedIconLabel> positionedChild;
  final String? beforeForegroundImage;

  BannerData({
    required this.backgroundImage,
    required this.foregroundImage,
    required this.positionedChild,
    this.beforeForegroundImage,
  });
}

class PositionedIconLabel {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget child;

  PositionedIconLabel({
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.child,
  });
}
