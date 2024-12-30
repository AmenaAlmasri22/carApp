import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    required BuildContext context,
    required String text,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    Alignment? alignment,
    EdgeInsets? margin,
    this.leftIcon,
    this.rightIcon,
    this.decoration,
     textStyle,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          buttonTextStyle: buttonTextStyle,
          isDisabled: isDisabled,
          height: height,
          width: width,
          margin: margin,
          alignment: alignment,
        );

  final Widget? leftIcon;
  final Widget? rightIcon;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget(context),
          )
        : buildElevatedButtonWidget(context);
  }

  Widget buildElevatedButtonWidget(BuildContext context) {
    return Container(
      height: height ?? 40.0, // تأكد من استخدام قيمة مناسبة للارتفاع
      width: width ??
          double.infinity, // استخدم double.infinity بدلاً من double.maxFinite
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle ??
            ElevatedButton
                .styleFrom(), // تأكد من تعيين نمط افتراضي إذا لم يتم تمرير أي نمط
        onPressed: isDisabled == true ? null : onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leftIcon ?? const SizedBox.shrink(),
            Text(
              text,
              style: buttonTextStyle ??
                  Theme.of(context)
                      .textTheme
                      .titleLarge, // استخدم Theme.of(context)
            ),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
