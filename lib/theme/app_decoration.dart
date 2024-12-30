import 'package:amena_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

/// Defines reusable border radius styles.
class BorderRadiusStyle {
  /// Returns a circular border radius with a specified radius.
  static BorderRadius circleBorder(double radius) =>
      BorderRadius.circular(radius.h);

  /// Predefined border radius for specific use cases.
  static BorderRadius get circleBorder3 => circleBorder(3);
  static BorderRadius get roundedBorder10 => circleBorder(10);
  static BorderRadius get roundedBorder14 => circleBorder(14);
}

/// Defines reusable decorations for backgrounds and outlines.
class AppDecoration {
  /// Retrieves the theme from the current context.
  static ThemeData get theme =>
      ThemeData.light(); // Replace with actual context.

  /// Retrieves the custom app theme.
  static AppTheme get appTheme => AppTheme();

  // Fill decorations
  /// Solid gray background fill.
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );

  /// Solid background using `onPrimary` color from the theme.
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );

  /// Solid primary color background fill.
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  /// Border with `blueGray100` color and `roundedBorder10` radius.
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      );
}

/// Placeholder for a custom app theme.
/// Replace this with your actual app theme implementation.
class AppTheme {
  Color get gray100 => const Color(0xFFF5F5F5);
  Color get blueGray100 => const Color(0xFFCFD8DC);
}
