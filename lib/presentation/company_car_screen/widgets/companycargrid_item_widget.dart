import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/companycargrid_item_model.dart';

// ignore_for_file: must_be_immutable
class CompanycargridItemWidget extends StatelessWidget {
  CompanycargridItemWidget(this.companycargridItemModelObj, {Key? key})
      : super(key: key);

  final CompanycargridItemModel companycargridItemModelObj;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // استخدام الثيم العام من context

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWhatsappImage20241028,
            height: 80.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(10.h),
          ),
          SizedBox(height: 4.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 24.h, right: 22.h),
            child: Container(
              height: 6.h,
              width: 104.h,
              decoration: BoxDecoration(
                color: AppTheme().gray100, // استخدام AppTheme للوصول إلى اللون المخصص
                borderRadius: BorderRadius.circular(3.h),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3.h),
                child: LinearProgressIndicator(
                  value: 0.25,
                  backgroundColor: AppTheme().gray100, // استخدام AppTheme للوصول إلى اللون المخصص
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary, // استخدام الثيم العام للوصول إلى اللون
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              companycargridItemModelObj.e300!,
              style: theme.textTheme.bodyMedium, // استخدام الثيم العام
            ),
          ),
          SizedBox(height: 4.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              companycargridItemModelObj.mercedesbenz!,
              style: theme.textTheme.bodyMedium, // استخدام الثيم العام
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  companycargridItemModelObj.zipcode!,
                  style: theme.textTheme.bodyMedium, // استخدام الثيم العام
                ),
                CustomImageView(
                  imagePath: companycargridItemModelObj.image!,
                  height: 10.h,
                  width: 8.h,
                  margin: EdgeInsets.only(left: 10.h),
                )
              ],
            ),
          ),
          SizedBox(height: 18.h),
        ],
      ),
    );
  }
}
