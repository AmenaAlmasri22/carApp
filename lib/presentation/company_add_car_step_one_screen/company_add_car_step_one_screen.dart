import 'package:amena_s_application4/presentation/company_add_car_step_two_screen/company_add_car_step_two_screen.dart';
import 'package:amena_s_application4/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/company_add_car_step_one_bloc.dart';
import 'models/company_add_car_step_one_model.dart';

class CompanyAddCarStepOneScreen extends StatelessWidget {
  const CompanyAddCarStepOneScreen({Key? key}) : super(key: key);

  static Widget builder() {
    return BlocProvider<CompanyAddCarStepOneBloc>(
      create: (context) => CompanyAddCarStepOneBloc(CompanyAddCarStepOneState(
        companyAddCarStepOneModelObj: CompanyAddCarStepOneModel(),
      ))
        ..add(CompanyAddCarStepOneInitialEvent()),
      child: CompanyAddCarStepOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocProvider<CompanyAddCarStepOneBloc>(
        create: (context) => CompanyAddCarStepOneBloc(CompanyAddCarStepOneState(
              companyAddCarStepOneModelObj: CompanyAddCarStepOneModel(),
            ))
              ..add(CompanyAddCarStepOneInitialEvent()),
        child: Scaffold(
          backgroundColor: themeHelper.getThemeColors().gray100,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 40.h,
                    right: 18.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildStepperSection(context),
                      SizedBox(height: 30.h),
                      Text(
                        "lbl_upload_video".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 10.h),
                      _buildVideoUploadSection(context),
                      SizedBox(height: 10.h),
                      Text(
                        "lbl_upload_images".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 10.h),
                      _buildImageUploadSection(context),
                      SizedBox(height: 10.h),
                      Text(
                        "msg_this_car_is_for".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 10.h),
                      _buildCarPurposeSection(context),
                      SizedBox(height: 10.h),
                      _buildRentalOptionsSection(context),
                      SizedBox(height: 6.h),
                      _buildBrandSelectionSection(context),
                      SizedBox(height: 10.h),
                      _buildModelSelectionSection(context),
                      SizedBox(height: 10.h),
                      Text(
                        "lbl_car_condition".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 10.h),
                      _buildCarConditionSection(context),
                      SizedBox(height: 50.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: _buildNextButtonSection(context),
        ));
  }

  // Stepper Section
  Widget _buildStepperSection(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 1, // الخطوة الحالية (تغييرها حسب الحاجة)
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
            iconWidget: _buildStepCircle("2", false),
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

  // Video Upload Section
  Widget _buildVideoUploadSection(BuildContext context) {
    final themeHelper = ThemeHelper();
    return SizedBox(
      width: double.maxFinite,
      child: DottedBorder(
        color: themeHelper.getThemeColors().blueGray800,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.h,
          right: 1.h,
          bottom: 1.h,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(10),
        borderType: BorderType.RRect,
        dashPattern: [18.691038131713867, 18.691038131713867],
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 6.h),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.h),
              CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 30.h,
                width: 32.h,
              ),
              SizedBox(height: 10.h),
              Text(
                "msg_tap_to_choose_a".tr,
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
              Text(
                "lbl_mp4_format".tr,
                style: CustomTextStyles.bodyMediumBlueGray200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Image Upload Section
  Widget _buildImageUploadSection(BuildContext context) {
    final themeHelper = ThemeHelper();
    return SizedBox(
      width: double.maxFinite,
      child: DottedBorder(
        color: themeHelper.getThemeColors().blueGray800,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.h,
          right: 1.h,
          bottom: 1.h,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(10),
        borderType: BorderType.RRect,
        dashPattern: [18.691038131713867, 18.691038131713867],
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 6.h),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.h),
              CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 30.h,
                width: 32.h,
              ),
              SizedBox(height: 10.h),
              Text(
                "msg_tap_to_choose_a2".tr,
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
              Text(
                "msg_jpeg_and_png_formats".tr,
                style: CustomTextStyles.bodyMediumBlueGray200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Car Purpose Section
  Widget _buildCarPurposeSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<CompanyAddCarStepOneBloc, CompanyAddCarStepOneState,
              bool?>(
            selector: (state) => state.sellone,
            builder: (context, sellone) {
              return CustomCheckboxButton(
                text: "lbl_sell".tr,
                value: sellone ?? false,
                padding: EdgeInsets.symmetric(vertical: 4.h),
                textStyle: CustomTextStyles.bodyLargeBlueGray900,
                onChange: (value) {
                  context
                      .read<CompanyAddCarStepOneBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.h),
            child: BlocSelector<CompanyAddCarStepOneBloc,
                CompanyAddCarStepOneState, bool?>(
              selector: (state) => state.longrentone,
              builder: (context, longrentone) {
                return CustomCheckboxButton(
                  text: "lbl_long_rent".tr,
                  value: longrentone ?? false,
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  textStyle: CustomTextStyles.bodyLargeBlueGray900,
                  onChange: (value) {
                    context
                        .read<CompanyAddCarStepOneBloc>()
                        .add(ChangeCheckBox1Event(value: value));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Rental Options Section
  Widget _buildRentalOptionsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<CompanyAddCarStepOneBloc, CompanyAddCarStepOneState,
              bool?>(
            selector: (state) => state.shortrentone,
            builder: (context, shortrentone) {
              return CustomCheckboxButton(
                text: "lbl_short_rent".tr,
                value: shortrentone ?? false,
                padding: EdgeInsets.symmetric(vertical: 4.h),
                textStyle: CustomTextStyles.bodyLargeBlueGray900,
                onChange: (value) {
                  context
                      .read<CompanyAddCarStepOneBloc>()
                      .add(ChangeCheckBox2Event(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(right: 60.h),
            child: BlocSelector<CompanyAddCarStepOneBloc,
                CompanyAddCarStepOneState, bool?>(
              selector: (state) => state.exportone,
              builder: (context, exportone) {
                return CustomCheckboxButton(
                  text: "lbl_export".tr,
                  value: exportone ?? false,
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  textStyle: CustomTextStyles.bodyLargeBlueGray900,
                  onChange: (value) {
                    context
                        .read<CompanyAddCarStepOneBloc>()
                        .add(ChangeCheckBox3Event(value: value));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Brand Selection Section
  Widget _buildBrandSelectionSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomDropDown(
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.symmetric(vertical: 8.h),
        onChanged: (value) {},
        items: [
          SelectionPopupModel(id: 1, name: "brand_1", title: ''),
          SelectionPopupModel(id: 2, name: "brand_2", title: ''),
        ],
        hint: "lbl_brand".tr,
      ),
    );
  }

  // Model Selection Section
  Widget _buildModelSelectionSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomDropDown(
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.symmetric(vertical: 8.h),
        onChanged: (value) {},
        items: [
          SelectionPopupModel(id: 1, name: "model_1", title: ''),
          SelectionPopupModel(id: 2, name: "model_2", title: ''),
        ],
        hint: "lbl_model".tr,
      ),
    );
  }

  // Car Condition Section
  Widget _buildCarConditionSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: BlocSelector<CompanyAddCarStepOneBloc, CompanyAddCarStepOneState,
          bool?>(
        selector: (state) => state.usedone,
        builder: (context, usedone) {
          return Row(
            children: [
              CustomCheckboxButton(
                //   width: double.maxFinite,
                text: "lbl_used".tr,
                value: usedone ?? false,
                padding: EdgeInsets.symmetric(vertical: 4.h),
                onChange: (value) {
                  context
                      .read<CompanyAddCarStepOneBloc>()
                      .add(ChangeCheckBox5Event(value: value));
                },
              ),
              SizedBox(width: 10), // إضافة مسافة بين الزرين إذا لزم الأمر
              BlocSelector<CompanyAddCarStepOneBloc, CompanyAddCarStepOneState,
                  bool?>(
                selector: (state) => state.newone,
                builder: (context, newone) {
                  return CustomCheckboxButton(
                    text: "lbl_new".tr,
                    value: newone ?? false,
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    onChange: (value) {
                      context
                          .read<CompanyAddCarStepOneBloc>()
                          .add(ChangeCheckBox4Event(value: value));
                    },
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  // Next Button Section
  Widget _buildNextButtonSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 30.h),
        child: CustomElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompanyAddCarStepTwoScreen(),
              ),
            );
          },
          text: "lbl_next".tr,
          textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
          height: 60.h,
          context: context,
        ),
      ),
    );
  }
}
