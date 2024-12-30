import 'package:amena_s_application4/presentation/company_add_car_step_three_screen/company_add_car_step_three_screen.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/company_add_car_step_two_bloc.dart';
import 'models/company_add_car_step_two_model.dart';

class CompanyAddCarStepTwoScreen extends StatelessWidget {
  const CompanyAddCarStepTwoScreen({Key? key}) : super(key: key);

  static Widget builder() {
    return BlocProvider<CompanyAddCarStepTwoBloc>(
      create: (context) => CompanyAddCarStepTwoBloc(CompanyAddCarStepTwoState(
        companyAddCarStepTwoModelObj: CompanyAddCarStepTwoModel(),
      ))
        ..add(CompanyAddCarStepTwoInitialEvent()),
      child: CompanyAddCarStepTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeHelper = ThemeHelper();

    return BlocProvider<CompanyAddCarStepTwoBloc>(
        create: (context) => CompanyAddCarStepTwoBloc(CompanyAddCarStepTwoState(
              companyAddCarStepTwoModelObj: CompanyAddCarStepTwoModel(),
            ))
              ..add(CompanyAddCarStepTwoInitialEvent()),
        child: Scaffold(
          backgroundColor: themeHelper.getThemeColors().gray100,
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.only(left: 18.h, top: 28.h, right: 18.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          _buildStepperSection(context),
                          SizedBox(height: 40.h),
                          _buildCountrySection(context),
                          SizedBox(height: 10.h),
                          _buildStateSection(context),
                          SizedBox(height: 10.h),
                          _buildCitySection(context),
                          SizedBox(height: 10.h),
                          _buildStreetSection(context),
                          SizedBox(height: 10.h),
                          _buildZipcodeSection(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: _buildNavigationButtons(context),
        ));
  }

  Widget _buildStepperSection(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 2, // الخطوة الحالية (تغييرها حسب الحاجة)
        barThickness: 4, // زيادة عرض الخطوط
        activeBarColor: Color(0xFF00688B), // لون الجزء النشط من الخط
        inActiveBarColor:
            const Color.fromARGB(255, 255, 255, 255), // لون الجزء غير النشط
        verticalGap: 5, // تقليل المسافة بين الخط والدائرة
        stepperList: [
          StepperData(
            iconWidget: _buildStepCircle("1", true),
          ),
          StepperData(
            iconWidget: _buildStepCircle("2", true),
          ),
          StepperData(
            iconWidget: _buildStepCircle("3", false),
          ),
          StepperData(
            iconWidget: _buildStepCircle("4", false),
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

  /// Section Widget
  Widget _buildCountrySection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_country".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepTwoBloc, CompanyAddCarStepTwoState,
              CompanyAddCarStepTwoModel?>(
            selector: (state) => state.companyAddCarStepTwoModelObj,
            builder: (context, companyAddCarStepTwoModelObj) {
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
                items: companyAddCarStepTwoModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  /// /// Section Widget
  Widget _buildStateSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_state".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepTwoBloc, CompanyAddCarStepTwoState,
              CompanyAddCarStepTwoModel?>(
            selector: (state) => state.companyAddCarStepTwoModelObj,
            builder: (context, companyAddCarStepTwoModelObj) {
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
                items: companyAddCarStepTwoModelObj?.dropdownItemList1 ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCitySection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_city".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepTwoBloc, CompanyAddCarStepTwoState,
              CompanyAddCarStepTwoModel?>(
            selector: (state) => state.companyAddCarStepTwoModelObj,
            builder: (context, companyAddCarStepTwoModelObj) {
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
                items: companyAddCarStepTwoModelObj?.dropdownItemList2 ?? [],
                contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildStepperSection(BuildContext context) {
  //   return SizedBox(
  //     width: double.maxFinite,
  //     child: AnotherStepper(
  //       iconHeight: 30,
  //       iconWidth: 76,
  //       stepperDirection: Axis.horizontal,
  //       activeIndex: 2,
  //       barThickness: 6,
  //       inverted: true,
  //       stepperList: [], // Ensure this list is populated if needed.
  //     ),
  //   );
  // }

  /// Refactored dropdown section
  // Widget _buildDropdownSection(
  //     BuildContext context,
  //     String labelKey,
  //     List<SelectionPopupModel> Function(CompanyAddCarStepTwoState)
  //         dropdownListSelector) {
  //                final theme = Theme.of(context);
  //   return SizedBox(
  //     width: double.maxFinite,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(labelKey.tr, style: theme.textTheme.bodyLarge),
  //         SizedBox(height: 10.h),
  //         BlocSelector<CompanyAddCarStepTwoBloc, CompanyAddCarStepTwoState,
  //             CompanyAddCarStepTwoModel?>(
  //           selector: (state) => state.companyAddCarStepTwoModelObj,
  //           builder: (context, companyAddCarStepTwoModelObj) {
  //             return CustomDropDown(
  //               icon: Container(
  //                 margin: EdgeInsets.only(left: 16.h),
  //                 child: CustomImageView(
  //                   imagePath: ImageConstant.imgAltarrowdownsvgrepocom6,
  //                   height: 22.h,
  //                   width: 24.h,
  //                   fit: BoxFit.contain,
  //                 ),
  //               ),
  //               iconSize: 22.h,
  //               items: dropdownListSelector(companyAddCarStepTwoModelObj. ),
  //               contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildZipcodeSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_zip_code".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepTwoBloc, CompanyAddCarStepTwoState,
              TextEditingController?>(
            selector: (state) => state.zipcodeController,
            builder: (context, zipcodeController) {
              return CustomTextFormField(
                controller: zipcodeController,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStreetSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_street".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          BlocSelector<CompanyAddCarStepTwoBloc, CompanyAddCarStepTwoState,
              TextEditingController?>(
            selector: (state) => state.edittextoneController,
            builder: (context, edittextoneController) {
              return CustomTextFormField(
                controller: edittextoneController,
                textInputAction: TextInputAction.done,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationButtons(BuildContext context) {
    return Container(
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNextButton(context),
          SizedBox(width: 6.h),
          _buildBackButton(context),
        ],
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompanyAddCarStepThreeScreen(),
            ),
          );
        },
        text: "lbl_next".tr,
        margin: EdgeInsets.only(bottom: 12.h),
        context: context,
      ),
    );
  }

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
}
