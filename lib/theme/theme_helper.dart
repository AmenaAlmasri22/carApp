import 'package:flutter/material.dart';
import 'package:amena_s_application4/core/utils/pref_utils.dart';

// Helper class for managing themes and colors
class ThemeHelper {
  // The current app theme
  var appTheme =
      PrefUtils().getThemeData() ?? 'lightCode'; // Use a default theme if null

  // A map of color schemes supported by the app
  Map<String, ColorScheme> supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // Returns the lightCode colors for the current theme
  LightCodeColors getThemeColors() {
    return _supportedCustomColor[appTheme] ?? LightCodeColors();
  }

  // Returns the current theme data
  ThemeData getThemeData() {
    var colorScheme =
        supportedColorScheme[appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return getThemeColors().blueGray900;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: getThemeColors().blueGray900,
          width: 1,
        ),
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      ),
    );
  }

  // Returns the lightCode colors for the current theme
  LightCodeColors themeColor() => getThemeColors();

  // Returns the current theme data
  ThemeData themeData() => getThemeData();
}

/// Class containing the supported text theme styles
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: LightCodeColors().black900,
          fontSize: 16.0,
          fontFamily: 'Century Gothic',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: LightCodeColors().black900,
          fontSize: 14.0,
          fontFamily: 'Century Gothic',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 20.0,
          fontFamily: 'Century Gothic',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16.0,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF00688B),
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0XFF292D32),
  );
}

/// Class containing custom colors for a lightCode theme
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray200 => Color(0XFFA9ABB4);
  Color get blueGray800 => Color(0XFF2A3457);
  Color get blueGray900 => Color(0XFF1C274C);

  // Gray
  Color get gray100 => Color(0XFFF4F4F4);
}
