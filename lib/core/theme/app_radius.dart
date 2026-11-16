import 'package:flutter/material.dart';

/// Central border radius tokens.
abstract final class AppRadius {
  static const double zero = 0.0;
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 28.0;
  static const double circular = 999.0;

  // Predefined BorderRadius
  static const BorderRadius roundedSm = BorderRadius.all(
    Radius.circular(sm),
  );
  static const BorderRadius roundedMd = BorderRadius.all(
    Radius.circular(md),
  );
  static const BorderRadius roundedLg = BorderRadius.all(
    Radius.circular(lg),
  );
  static const BorderRadius roundedXl = BorderRadius.all(
    Radius.circular(xl),
  );
  static const BorderRadius roundedFull = BorderRadius.all(
    Radius.circular(circular),
  );

  static const BorderRadius roundedTopLg = BorderRadius.vertical(
    top: Radius.circular(lg),
  );
}

