import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton({
    Key? key,
    required this.onChange,
    this.text,
    this.width,
    this.padding,
    this.textStyle,
    this.overflow,
    this.textAlignment,
    this.isExpandedText = false,
    this.value = false,
    this.iconSize = 24.0,
    this.alignment,
    this.isRightCheck = false,
    this.decoration,
  }) : super(key: key);

  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextOverflow? overflow;
  final TextAlign? textAlignment;
  final bool isExpandedText;
  final bool value;
  final double iconSize;
  final Alignment? alignment;
  final bool isRightCheck;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckBoxWidget(theme),
          )
        : _buildCheckBoxWidget(theme);
  }

  Widget _buildCheckBoxWidget(ThemeData theme) {
    return GestureDetector(
      onTap: () {
        onChange(!value);
      },
      child: Container(
        decoration: decoration,
        width: width,
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:
              isRightCheck ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
          children: isRightCheck
              ? [_buildTextWidget(theme), const SizedBox(width: 8), _buildCheckbox(theme)]
              : [_buildCheckbox(theme), const SizedBox(width: 8), _buildTextWidget(theme)],
        ),
      ),
    );
  }

  Widget _buildTextWidget(ThemeData theme) {
    return isExpandedText
        ? Expanded(
            child: Text(
              text ?? "",
              textAlign: textAlignment ?? TextAlign.start,
              overflow: overflow,
              style: textStyle ?? theme.textTheme.bodyMedium,
            ),
          )
        : Text(
            text ?? "",
            textAlign: textAlignment ?? TextAlign.start,
            overflow: overflow,
            style: textStyle ?? theme.textTheme.bodyMedium,
          );
  }

  Widget _buildCheckbox(ThemeData theme) {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Checkbox(
        visualDensity: VisualDensity.compact,
        value: value,
        checkColor: theme.colorScheme.onPrimary,
        activeColor: theme.colorScheme.primary,
        side: BorderSide(color: theme.colorScheme.primary),
        onChanged: (newValue) {
          if (newValue != null) {
            onChange(newValue);
          }
        },
      ),
    );
  }
}
