import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Central elevation and box shadow tokens.
abstract final class AppShadows {
  static const List<BoxShadow> cardShadow = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 10.0,
      offset: Offset(0, 4),
      spreadRadius: 0.0,
    ),
  ];

  static const List<BoxShadow> softShadow = [
    BoxShadow(
      color: Color(0x0A000000),
      blurRadius: 6.0,
      offset: Offset(0, 2),
      spreadRadius: 0.0,
    ),
  ];

  static const List<BoxShadow> floatingNavShadow = [
    BoxShadow(
      color: Color(0x1F000000),
      blurRadius: 16.0,
      offset: Offset(0, -2),
      spreadRadius: 0.0,
    ),
  ];
}

