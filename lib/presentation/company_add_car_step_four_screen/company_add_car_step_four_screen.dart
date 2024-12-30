import 'package:amena_s_application4/presentation/company_add_car_step_five_screen/company_add_car_step_five_screen.dart';
import 'package:amena_s_application4/presentation/company_add_car_step_four_screen/models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';

import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/company_add_car_step_four_bloc.dart';

class CompanyAddCarStepFourScreen extends StatelessWidget {
  const CompanyAddCarStepFourScreen({Key? key}) : super(key: key);

  static Widget builder() {
    return BlocProvider<CompanyAddCarStepFourBloc>(
      create: (context) => CompanyAddCarStepFourBloc(
        CompanyAddCarStepFourState(
          companyAddCarStepFourModelObj: CompanyAddCarStepFourModel(),
        ),
      )..add(CompanyAddCarStepFourInitialEvent()),
      child: CompanyAddCarStepFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeHelper = ThemeHelper();

    return BlocProvider<CompanyAddCarStepFourBloc>(
        create: (context) => CompanyAddCarStepFourBloc(
              CompanyAddCarStepFourState(
                companyAddCarStepFourModelObj: CompanyAddCarStepFourModel(),
              ),
            )..add(CompanyAddCarStepFourInitialEvent()),
        child: Scaffold(
          backgroundColor: themeHelper.getThemeColors().gray100,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 18.h, top: 28.h, right: 18.h),
                  child: Column(
                    children: [
                      _buildStepperSection(context),
                      SizedBox(height: 30.h),
                      _buildExpirationDateSection(context),
                      SizedBox(height: 10.h),
                      _buildEnvironmentalSignSection(context),
                      SizedBox(height: 10.h),
                      _buildEmissionsCategorySection(context),
                      SizedBox(height: 10.h),
                      _buildCarColorSection(context),
                      SizedBox(height: 10.h),
                      _buildBrushTypeSection(context),
                      SizedBox(height: 10.h),
                      _buildCarSpecificationsSection(context),
                      SizedBox(height: 10.h),
                      _buildDescriptionSection(context),
                      SizedBox(height: 18.h),
                      _buildNavigationButtonsSection(context),
                      SizedBox(height: 18.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  /// Section Widget
  /// /// Section Widget
  /// /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompanyAddCarStepFiveScreen(),
            ),
          );
        },
        context: context,
        text: "lbl_next".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildBackButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        context: context,
        text: "lbl_back".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationButtonsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          _buildNextButton(context),
          SizedBox(width: 6.h),
          _buildBackButton(context),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_description".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildDescriptionInput(context),
        ],
      ),
    );
  }

  Widget _buildDescriptionInput(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
        TextEditingController?>(
      selector: (state) => state.descriptionInputController,
      builder: (context, descriptionInputController) {
        return CustomTextFormField(
          controller: descriptionInputController,
          textInputAction: TextInputAction.done,
          maxLines: 5,
          contentPadding: EdgeInsets.all(12.h),
        );
      },
    );
  }

  Widget _buildCarSpecificationsSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_car_specifications".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
              CompanyAddCarStepFourModel?>(
            selector: (state) => state.companyAddCarStepFourModelObj,
            builder: (context, companyAddCarStepFourModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAltarrowdownsvgrepocom6,
                    height: 22.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 22.h,
                items: companyAddCarStepFourModelObj?.dropdownItemList4 ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBrushTypeSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_brush_type".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
              CompanyAddCarStepFourModel?>(
            selector: (state) => state.companyAddCarStepFourModelObj,
            builder: (context, companyAddCarStepFourModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAltarrowdownsvgrepocom6,
                    height: 22.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 22.h,
                items: companyAddCarStepFourModelObj?.dropdownItemList3 ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCarColorSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_car_color".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
              CompanyAddCarStepFourModel?>(
            selector: (state) => state.companyAddCarStepFourModelObj,
            builder: (context, companyAddCarStepFourModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAltarrowdownsvgrepocom6,
                    height: 22.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 22.h,
                items: companyAddCarStepFourModelObj?.dropdownItemList2 ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmissionsCategorySection(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_emissions_category".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 10.h),
        BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
            CompanyAddCarStepFourModel?>(
          selector: (state) => state.companyAddCarStepFourModelObj,
          builder: (context, companyAddCarStepFourModelObj) {
            return CustomDropDown(
              icon: Container(
                margin: EdgeInsets.only(left: 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgAltarrowdownsvgrepocom6,
                  height: 22.h,
                  width: 24.h,
                  fit: BoxFit.contain,
                ),
              ),
              iconSize: 22.h,
              items: companyAddCarStepFourModelObj?.dropdownItemList1 ?? [],
              contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              width: double.maxFinite,
            );
          },
        ),
      ],
    );
  }

  Widget _buildStepperSection(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 4,
        barThickness: 4,
        activeBarColor: Color(0xFF00688B),
        inActiveBarColor: const Color.fromARGB(255, 255, 255, 255),
        verticalGap: 5,
        stepperList: [
          StepperData(
            iconWidget: _buildStepCircle("1", true),
          ),
          StepperData(
            iconWidget: _buildStepCircle("2", true),
          ),
          StepperData(
            iconWidget: _buildStepCircle("3", true),
          ),
          StepperData(
            iconWidget: _buildStepCircle("4", true),
          ),
          StepperData(
            iconWidget: _buildStepCircle("5", false),
          ),
        ],
      ),
    );
  }

  Widget _buildStepCircle(String stepNumber, bool isActive) {
    return Container(
      width: 40.0, // حجم الدائرة
      height: 40.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF00688B) : Colors.white, // لون الدائرة
        shape: BoxShape.circle,
        border: Border.all(
          color: isActive
              ? Color(0xFF00688B)
              : const Color.fromARGB(255, 255, 255, 255),
          width: 2.0, // عرض الحافة
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        stepNumber,
        style: TextStyle(
          fontSize: 12.0, // تصغير حجم النص
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFF00688B),
        ),
      ),
    );
  }

  Widget _buildExpirationDateInput(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
        TextEditingController?>(
      selector: (state) => state.expirationDateInputController,
      builder: (context, expirationDateInputController) {
        return CustomTextFormField(
          controller: expirationDateInputController,
          contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
        );
      },
    );
  }

  Widget _buildExpirationDateSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_expiration_date".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildExpirationDateInput(context),
        ],
      ),
    );
  }

  Widget _buildEnvironmentalSignSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("msg_environmental_sign".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepFourBloc, CompanyAddCarStepFourState,
              CompanyAddCarStepFourModel?>(
            selector: (state) => state.companyAddCarStepFourModelObj,
            builder: (context, companyAddCarStepFourModelObj) {
              return CustomDropDown(
                margin: EdgeInsets.only(left: 16.h),
                icon: Container(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAltarrowdownsvgrepocom6,
                    height: 22.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 22.h,
                items: companyAddCarStepFourModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  // Similar formatting is applied to other widget sections (_buildEmissionsCategorySection, _buildCarColorSection, etc.)
}
