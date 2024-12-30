import 'package:flutter/material.dart';

// These are the Viewport values of your Figma Design.
// These are used in the code as a reference to create your UI Responsively.
const num FIGMA_DESIGN_WIDTH = 393;
const num FIGMA_DESIGN_HEIGHT = 852;
const num FIGMA_DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  // Calculates the responsive width based on the screen size.
  double get _width => SizeUtils.width;

  // Calculates the responsive height based on the screen size.
  double get h => ((this * _width) / FIGMA_DESIGN_WIDTH);

  // Calculates the responsive font size based on the screen size.
  double get fSize => ((this * _width) / FIGMA_DESIGN_WIDTH);
}

extension FormatExtension on double {
  // Returns the double value with a specified number of fractional digits.
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  // Returns the double value or a default value if the number is zero or negative.
  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

// Enum to define different device types (mobile, tablet, desktop)
enum DeviceType { mobile, tablet, desktop }

// A typedef for responsive widget builder function
typedef ResponsiveBuild = Widget Function(
    BuildContext context, Orientation orientation, DeviceType deviceType);

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);

  // Builds the widget whenever the orientation changes.
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        // Set the screen size based on the current constraints and orientation
        SizeUtils.setScreenSize(constraints, orientation);

        // Call the builder with the updated orientation and device type
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  // Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  // Device's Orientation
  static late Orientation orientation;

  // Type of Device (mobile, tablet, desktop)
  static late DeviceType deviceType;

  // Device's Height
  static late double height;

  // Device's Width
  static late double width;

  // Set the screen size based on constraints and orientation
  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Calculate width and height based on orientation
    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
    }

    // Default device type is mobile, but can be updated based on the screen size
    deviceType = DeviceType.mobile;
  }
}
