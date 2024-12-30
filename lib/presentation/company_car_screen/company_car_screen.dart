import 'package:amena_s_application4/core/app_export.dart';
import 'package:amena_s_application4/presentation/company_add_car_step_one_screen/company_add_car_step_one_screen.dart';
import 'package:amena_s_application4/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:amena_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'models/companycargrid_item_model.dart';
import 'widgets/companycargrid_item_widget.dart';
import 'models/company_car_model.dart';
import 'bloc/company_car_bloc.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class CompanyCarScreen extends StatelessWidget {
  const CompanyCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 20.h, top: 12.h, right: 20.h),
          decoration: BoxDecoration(
            color: AppTheme().gray100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_search".tr,
                style:
                    theme.textTheme.bodyLarge, // استخدام theme للوصول إلى الثيم
              ),
              SizedBox(height: 8.h),
              _buildSearchRow(context),
              SizedBox(height: 30.h),
              _buildCompanyCarGrid(context),
              SizedBox(height: 14.h),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget for AppBar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      backgroundColor:
          AppTheme().gray100, // استخدام AppTheme للوصول إلى الألوان
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAltArrowDownSvgrepoCom,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_cars".tr,
      ),
      actions: [
        AppbarTrailingIconButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompanyAddCarStepOneScreen(),
              ),
            );
          },
          imagePath: ImageConstant.imgAddSquareSvgrepoCom,
          margin: EdgeInsets.only(right: 19.h),
        )
      ],
    );
  }

  /// Section Widget for Search Row
  Widget _buildSearchRow(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 38.h,
              width: 304.h,
              decoration: BoxDecoration(
                color: theme
                    .colorScheme.onPrimary, // استخدام theme للوصول إلى الألوان
                borderRadius: BorderRadius.circular(10.h),
              ),
            ),
          ),
          SizedBox(width: 10.h),
          CustomIconButton(
            height: 38.h,
            width: 38.h,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget for Company Car Grid
  Widget _buildCompanyCarGrid(BuildContext context) {
    return Expanded(
      child: BlocSelector<CompanyCarBloc, CompanyCarState, CompanyCarModel?>(
        selector: (state) => state.companyCarModelObj,
        builder: (context, companyCarModelObj) {
          return ResponsiveGridListBuilder(
            minItemWidth: 1,
            minItemsPerRow: 2,
            maxItemsPerRow: 2,
            horizontalGridSpacing: 24.h,
            verticalGridSpacing: 24.h,
            builder: (context, items) => ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              children: items,
            ),
            gridItems: List.generate(
              companyCarModelObj?.companycargridItemList.length ?? 0,
              (index) {
                CompanycargridItemModel model =
                    companyCarModelObj?.companycargridItemList[index] ??
                        CompanycargridItemModel();
                return CompanycargridItemWidget(model);
              },
            ),
          );
        },
      ),
    );
  }
}
