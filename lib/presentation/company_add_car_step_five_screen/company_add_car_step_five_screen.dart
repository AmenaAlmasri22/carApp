import 'package:amena_s_application4/presentation/company_add_car_step_five_screen/bloc/company_add_car_step_five_event.dart';
import 'package:amena_s_application4/presentation/company_add_car_step_five_screen/bloc/company_add_car_step_five_state.dart';
import 'package:amena_s_application4/presentation/company_add_car_step_five_screen/models/app_navigation_model.dart';
import 'package:amena_s_application4/presentation/company_car_screen/company_car_screen.dart';
import 'package:amena_s_application4/theme/custom_button_style.dart';
import 'package:amena_s_application4/theme/custom_text_style.dart';
import 'package:amena_s_application4/widgets/custom_text_form_field.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/company_add_car_step_five_bloc.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';

class CompanyAddCarStepFiveScreen extends StatelessWidget {
  const CompanyAddCarStepFiveScreen({Key? key}) : super(key: key);

  static Widget builder() {
    return BlocProvider<CompanyAddCarStepFiveBloc>(
      create: (context) => CompanyAddCarStepFiveBloc(
        CompanyAddCarStepFiveState(
            companyAddCarStepFiveModelObj: CompanyAddCarStepFiveModel()),
      )..add(CompanyAddCarStepFiveInitialEvent()),
      child: CompanyAddCarStepFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocProvider<CompanyAddCarStepFiveBloc>(
        create: (context) => CompanyAddCarStepFiveBloc(
              CompanyAddCarStepFiveState(
                  companyAddCarStepFiveModelObj: CompanyAddCarStepFiveModel()),
            )..add(CompanyAddCarStepFiveInitialEvent()),
        child: Scaffold(
          backgroundColor: themeHelper.getThemeColors().gray100,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 18.h, top: 30.h, right: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildStepperSection(context),
                      SizedBox(height: 30.h),
                      _buildPriceSection(context),
                      SizedBox(height: 10.h),
                      _buildOfferPriceSection(context),
                      SizedBox(height: 10.h),
                      Text("msg_price_is_negotiable".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.h),
                      _buildNegotiablePriceSection(context),
                      SizedBox(height: 10.h),
                      _buildSellMethodSection(context),
                      SizedBox(height: 4.h),
                      Text("lbl_instalment_type".tr,
                          style: CustomTextStyles.bodyLarge_1),
                      SizedBox(height: 10.h),
                      _buildInstalmentTypeSection(context),
                      SizedBox(height: 10.h),
                      _buildFirstPaymentSection(context),
                      SizedBox(height: 10.h),
                      _buildMonthlyInstalmentSection(context),
                      SizedBox(height: 10.h),
                      _buildInstalmentMonthsSection(context),
                      SizedBox(height: 10.h),
                      _buildLastPaymentSection(context),
                      SizedBox(height: 10.h),
                      _buildFixedInterestSection(context),
                      SizedBox(height: 10.h),
                      _buildVariableInterestSection(context),
                      SizedBox(height: 200.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: _buildNavigationButtons(context),
        ));
  }

  // Stepper Section Widget
  Widget _buildStepperSection(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 5,
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
            iconWidget: _buildStepCircle("5", true),
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

  // Price Section Widget
  Widget _buildPriceSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_price".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildPricetwo(context),
        ],
      ),
    );
  }

  Widget _buildPricetwo(BuildContext context) {
    final theme = Theme.of(context);
    final themeHelper = ThemeHelper();

    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.pricetwoController,
      builder: (context, pricetwoController) {
        return CustomTextFormField(
          controller: pricetwoController,
          prefix: Container(
            padding: EdgeInsets.fromLTRB(16.h, 12.h, 18.h, 10.h),
            margin: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 38.h,
          ),
          contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
        );
      },
    );
  }

  // Offer Price Section Widget
  Widget _buildOfferPriceSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("msg_offer_price_optional".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildPricethree(context),
        ],
      ),
    );
  }

  Widget _buildPricethree(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.pricethreeController,
      builder: (context, pricethreeController) {
        return CustomTextFormField(
          controller: pricethreeController,
          prefix: Container(
            padding: EdgeInsets.fromLTRB(16.h, 12.h, 18.h, 10.h),
            margin: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 38.h,
          ),
          contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
        );
      },
    );
  }

  // Negotiable Price Section Widget
  Widget _buildNegotiablePriceSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
              bool?>(
            selector: (state) => state.yesone,
            builder: (context, yesone) {
              return CustomCheckboxButton(
                text: "lbl_yes".tr,
                value: yesone ?? false,
                padding: EdgeInsets.symmetric(vertical: 4.h),
                onChange: (value) {
                  context
                      .read<CompanyAddCarStepFiveBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: BlocSelector<CompanyAddCarStepFiveBloc,
                CompanyAddCarStepFiveState, bool?>(
              selector: (state) => state.noone,
              builder: (context, noone) {
                return CustomCheckboxButton(
                  text: "lbl_no".tr,
                  value: noone ?? false,
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  onChange: (value) {
                    context
                        .read<CompanyAddCarStepFiveBloc>()
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

  // Sell Method Section Widget
  Widget _buildSellMethodSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_sell_method".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildCashInstallmentsGiftSection(context),
        ],
      ),
    );
  }

  // Cash, Instalments, Gift Checkbox Section Widget
  Widget _buildCashInstallmentsGiftSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          _buildCashCheckbox(context),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildInstallmentsCheckbox(context),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildGiftCheckbox(context),
          ),
        ],
      ),
    );
  }

  Widget _buildCashCheckbox(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        bool?>(
      selector: (state) => state.cashone,
      builder: (context, cashone) {
        return CustomCheckboxButton(
          text: "lbl_cash".tr,
          value: cashone ?? false,
          padding: EdgeInsets.symmetric(vertical: 4.h),
          onChange: (value) {
            context
                .read<CompanyAddCarStepFiveBloc>()
                .add(ChangeCheckBox2Event(value: value));
          },
        );
      },
    );
  }

  Widget _buildInstallmentsCheckbox(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        bool?>(
      selector: (state) => state.instalmentsone,
      builder: (context, instalmentsone) {
        return CustomCheckboxButton(
          text: "lbl_instalments".tr,
          value: instalmentsone ?? false,
          padding: EdgeInsets.symmetric(vertical: 4.h),
          onChange: (value) {
            context
                .read<CompanyAddCarStepFiveBloc>()
                .add(ChangeCheckBox3Event(value: value));
          },
        );
      },
    );
  }

  Widget _buildGiftCheckbox(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        bool?>(
      selector: (state) => state.giftone,
      builder: (context, giftone) {
        return CustomCheckboxButton(
          text: "lbl_gift".tr,
          value: giftone ?? false,
          padding: EdgeInsets.symmetric(vertical: 4.h),
          onChange: (value) {
            context
                .read<CompanyAddCarStepFiveBloc>()
                .add(ChangeCheckBox4Event(value: value));
          },
        );
      },
    );
  }

  // Instalment Type Section Widget
  Widget _buildInstalmentTypeSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          _buildWithBenefitsCheckbox(context),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildNoInterestCheckbox(context),
          ),
        ],
      ),
    );
  }

  Widget _buildWithBenefitsCheckbox(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        bool?>(
      selector: (state) => state.withbenefits,
      builder: (context, withbenefits) {
        return CustomCheckboxButton(
          text: "lbl_with_benefits".tr,
          value: withbenefits ?? false,
          padding: EdgeInsets.symmetric(vertical: 4.h),
          onChange: (value) {
            context
                .read<CompanyAddCarStepFiveBloc>()
                .add(ChangeCheckBox5Event(value: value));
          },
        );
      },
    );
  }

  Widget _buildNoInterestCheckbox(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        bool?>(
      selector: (state) => state.nointerestone,
      builder: (context, nointerestone) {
        return CustomCheckboxButton(
          text: "lbl_no_interest".tr,
          value: nointerestone ?? false,
          padding: EdgeInsets.symmetric(vertical: 4.h),
          onChange: (value) {
            context
                .read<CompanyAddCarStepFiveBloc>()
                .add(ChangeCheckBox6Event(value: value));
          },
        );
      },
    );
  }

  // First Payment Section Widget
  Widget _buildFirstPaymentSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_first_payment".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildSettingsthree(context),
        ],
      ),
    );
  }

  Widget _buildSettingsthree(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.settingsthreeController,
      builder: (context, settingsthreeController) {
        return CustomTextFormField(
          controller: settingsthreeController,
          textInputAction: TextInputAction.done,
          prefix: Container(
            padding: EdgeInsets.fromLTRB(16.h, 12.h, 18.h, 10.h),
            margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 38.h),
          contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
        );
      },
    );
  }

  // Monthly Instalment Section Widget
  Widget _buildMonthlyInstalmentSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_monthly_instalment".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildSettingsone(context),
        ],
      ),
    );
  }

  Widget _buildSettingsone(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.settingsoneController,
      builder: (context, settingsoneController) {
        return CustomTextFormField(
          controller: settingsoneController,
          textInputAction: TextInputAction.done,
          prefix: Container(
            padding: EdgeInsets.fromLTRB(16.h, 12.h, 18.h, 10.h),
            margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 38.h),
          contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
        );
      },
    );
  }

  // Instalment Months Section Widget
  Widget _buildInstalmentMonthsSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_instalment_months".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildEdittexttwo(context),
        ],
      ),
    );
  }

  Widget _buildEdittexttwo(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.edittexttwoController,
      builder: (context, edittexttwoController) {
        return CustomTextFormField(
          controller: edittexttwoController,
          textInputAction: TextInputAction.done,
          prefix: Container(
            padding: EdgeInsets.fromLTRB(16.h, 12.h, 18.h, 10.h),
            margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 38.h),
          contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.h),
        );
      },
    );
  }

  // Last Payment Section Widget
  Widget _buildLastPaymentSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_last_payment".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildSettingstwo(context),
        ],
      ),
    );
  }

  Widget _buildSettingstwo(BuildContext context) {
    final themeHelper = ThemeHelper();
    final theme = Theme.of(context);
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.settingstwoController,
      builder: (context, settingstwoController) {
        return CustomTextFormField(
          controller: settingstwoController,
          textInputAction: TextInputAction.done,
          prefix: Container(
            padding: EdgeInsets.fromLTRB(16.h, 12.h, 18.h, 10.h),
            margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 38.h),
          contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
        );
      },
    );
  }

  // Fixed Interest Section Widget
  Widget _buildFixedInterestSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_fixed_interest".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildEdittextone(context)
        ],
      ),
    );
  }

  Widget _buildEdittextone(BuildContext context) {
    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.edittextoneController,
      builder: (context, edittextoneController) {
        return CustomTextFormField(
          controller: edittextoneController,
          contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.h),
        );
      },
    );
  }

  // Variable Interest Section Widget
  Widget _buildVariableInterestSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_variable_interest".tr, style: theme.textTheme.bodyLarge),
          SizedBox(height: 10.h),
          _buildUserone(context),
        ],
      ),
    );
  }

  Widget _buildUserone(BuildContext context) {
    final theme = Theme.of(context);
    final themeHelper = ThemeHelper();

    return BlocSelector<CompanyAddCarStepFiveBloc, CompanyAddCarStepFiveState,
        TextEditingController?>(
      selector: (state) => state.useroneController,
      builder: (context, useroneController) {
        return CustomTextFormField(
          controller: useroneController,
          textInputAction: TextInputAction.done,
          prefix: Container(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.h),
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              border: Border(
                right: BorderSide(
                  color: themeHelper.getThemeColors().gray100,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 22.h,
              width: 24.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 38.h),
          contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
        );
      },
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        context: context,
        margin: EdgeInsets.only(bottom: 12.h),
        text: "lbl_next".tr,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompanyCarScreen(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        context: context,
        text: "lbl_back".tr,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  // Navigation Buttons Widget
  Widget _buildNavigationButtons(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
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
}
