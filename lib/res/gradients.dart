import 'package:flutter/material.dart';

class AppGradients {
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF002BB1), // 0%
      Color(0xFF002BB1), // 20%
      Color(0xFF3765F6), // 45%
      Color(0xFF002BB1), // 77%
      Color(0xFF002BB1), // 100%
    ],
    stops: [0.0, 0.2, 0.45, 0.77, 1.0],
    begin: Alignment(1.0, 0.25),
    end: Alignment.centerLeft,
  );
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [
      Color(0xFF26265F), // 0%
      Color(0xFF26265F), // 20%
      Color(0xFF2A2A79), // 45%
      Color(0xFF26265F), // 77%
      Color(0xFF26265F), // 100%
    ],
    stops: [0.0, 0.2, 0.45, 0.77, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
