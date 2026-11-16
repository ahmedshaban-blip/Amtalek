import 'package:flutter/material.dart';

/// Central spacing and margin/padding tokens.
abstract final class AppSpacing {
  static const double zero = 0.0;
  static const double xxs = 2.0;
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
  static const double huge = 48.0;

  // Common insets
  static const EdgeInsets pagePadding = EdgeInsets.symmetric(
    horizontal: lg,
  );
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  static const EdgeInsets compactCardPadding = EdgeInsets.all(sm);
  static const EdgeInsets tagPadding = EdgeInsets.symmetric(
    horizontal: sm,
    vertical: xs,
  );
}

