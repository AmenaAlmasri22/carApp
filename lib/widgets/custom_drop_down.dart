import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../data/models/selectionPopupModel/selection_popup_model.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.focusNode,
    this.icon,
    this.iconSize,
    this.autofocus = false,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.items,
    this.prefix,
    this.prefixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
     EdgeInsets? margin,
     EdgeInsets? padding,
     String? hint,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final FocusNode? focusNode;
  final Widget? icon;
  final double? iconSize;
  final bool? autofocus;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final List<SelectionPopupModel>? items;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final Function(SelectionPopupModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // استخدام الثيم من السياق

    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(theme),
          )
        : _buildDropDownWidget(theme);
  }

  Widget _buildDropDownWidget(ThemeData theme) {
    return Container(
      width: width ?? double.maxFinite,
      decoration: boxDecoration,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: focusNode,
        icon: icon,
        iconSize: iconSize ?? 24,
        autofocus: autofocus ?? false,
        isExpanded: true,
        style: textStyle ?? theme.textTheme.bodyMedium,
        hint: Text(
          hintText ?? "",
          style: hintStyle ??
              theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),
          overflow: TextOverflow.ellipsis,
        ),
        items: items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
              style: hintStyle ?? theme.textTheme.bodyMedium,
            ),
          );
        }).toList(),
        decoration: _inputDecoration(theme),
        validator: validator,
        onChanged: (value) {
          if (onChanged != null && value != null) {
            onChanged!(value);
          }
        },
      ),
    );
  }

  InputDecoration _inputDecoration(ThemeData theme) {
    return InputDecoration(
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      isDense: true,
      contentPadding: contentPadding ?? EdgeInsets.all(8.h),
      fillColor: fillColor ?? theme.colorScheme.onPrimary,
      filled: filled,
      border: borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide.none,
          ),
      enabledBorder: borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide.none,
          ),
      focusedBorder: (borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.h),
              ))
          .copyWith(
        borderSide: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
      ),
    );
  }
}
