import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance.
class CustomTextStyles {
  /// Retrieve the theme from the current context.
  static ThemeData get theme => ThemeData.light(); // Replace with actual context.

  /// Retrieve the custom app theme.
  static AppTheme get appTheme => AppTheme();

  // Body text styles
  static TextStyle bodyLarge({Color? color}) => theme.textTheme.bodyLarge!.copyWith(
        color: color ?? theme.colorScheme.onSurface,
      );
static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static TextStyle get bodyLargeBlueGray900 => bodyLarge(color: appTheme.blueGray900);
  static TextStyle get bodyMediumBlueGray200 => bodyMedium(color: appTheme.blueGray200);

  static TextStyle bodyMedium({Color? color}) => theme.textTheme.bodyMedium!.copyWith(
        color: color ?? theme.colorScheme.onSurface,
      );

  static TextStyle get bodyMediumOnPrimaryContainer => bodyMedium(color: theme.colorScheme.onPrimaryContainer);

  // Title text styles
  static TextStyle titleLarge({Color? color}) => theme.textTheme.titleLarge!.copyWith(
        color: color ?? theme.colorScheme.primary,
      );

  static TextStyle get titleLargeBlueGray900 => titleLarge(color: appTheme.blueGray900);
  static TextStyle get titleLargeGray100 => titleLarge(color: appTheme.gray100);

  static TextStyle titleMedium({Color? color}) => theme.textTheme.titleMedium!.copyWith(
        color: color ?? theme.colorScheme.primary,
      );
 static TextStyle get titleLargeBluegray900 =>      theme.textTheme.titleLarge!.copyWith(        color: appTheme.blueGray900,        fontWeight: FontWeight.w700,      );
  static TextStyle get titleMediumPrimary => titleMedium(color: theme.colorScheme.primary);

  // Additional utility styles
  static TextStyle get defaultBodyLarge => theme.textTheme.bodyLarge!;
}

/// Custom app theme placeholder (replace with your actual implementation).
class AppTheme {
  Color get blueGray900 => const Color(0xFF1C1C1C);
  Color get blueGray200 => const Color(0xFFB0BEC5);
  Color get gray100 => const Color(0xFFF5F5F5);
}
