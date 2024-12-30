import 'package:amena_s_application4/core/app_export.dart';
import 'package:amena_s_application4/core/utils/image_constant.dart';
import 'package:amena_s_application4/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import '../custom_icon_button.dart';

class AppbarTrailingIconButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? imagePath;
  final Function? onTap;
  final EdgeInsetsGeometry? margin;

  AppbarTrailingIconButton({
    Key? key,
    this.height,
    this.width,
    this.imagePath,
    this.onTap,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: CustomIconButton(
          height: height ?? 30.h,
          width: width ?? 30.h,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(
            imagePath: imagePath ?? ImageConstant.imgAddSquareSvgrepoCom,
          ),
        ),
      ),
    );
  }
}
