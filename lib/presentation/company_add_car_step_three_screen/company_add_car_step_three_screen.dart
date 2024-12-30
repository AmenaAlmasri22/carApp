import 'package:amena_s_application4/presentation/company_add_car_step_four_screen/company_add_car_step_four_screen.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/company_add_car_step_three_bloc.dart';
import 'models/company_add_car_step_three_model.dart';

class CompanyAddCarStepThreeScreen extends StatelessWidget {
  const CompanyAddCarStepThreeScreen({Key? key}) : super(key: key);

  static Widget builder() {
    return BlocProvider<CompanyAddCarStepThreeBloc>(
      create: (context) =>
          CompanyAddCarStepThreeBloc(CompanyAddCarStepThreeState(
        companyAddCarStepThreeModelObj: CompanyAddCarStepThreeModel(),
      ))
            ..add(CompanyAddCarStepThreeInitialEvent()),
      child: CompanyAddCarStepThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeHelper = ThemeHelper();

    return BlocProvider<CompanyAddCarStepThreeBloc>(
        create: (context) =>
            CompanyAddCarStepThreeBloc(CompanyAddCarStepThreeState(
              companyAddCarStepThreeModelObj: CompanyAddCarStepThreeModel(),
            ))
              ..add(CompanyAddCarStepThreeInitialEvent()),
        child: Scaffold(
          backgroundColor: themeHelper.getThemeColors().gray100,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: ListView(children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 28.h,
                    right: 18.h,
                  ),
                  child: Column(
                    children: [
                      _buildStepperSection(context),
                      SizedBox(height: 30.h),
                      _buildCarMileageSection(context),
                      SizedBox(height: 10.h),
                      _buildCarStatusSection(context),
                      SizedBox(height: 10.h),
                      _buildYearOfManufactureSection(context),
                      SizedBox(height: 10.h),
                      _buildRegistrationDateSection(context),
                      SizedBox(height: 10.h),
                      _buildNumberOfOwnersSection(context),
                      SizedBox(height: 10.h),
                      _buildFuelTypeSection(context),
                      SizedBox(height: 10.h),
                      _buildNumberOfHorsesSection(context),
                      SizedBox(height: 10.h),
                      _buildEngineTorqueSection(context),
                      SizedBox(height: 10.h),
                      _buildTransmissionTypeSection(context),
                      SizedBox(height: 10.h),
                      _buildNumberOfDoorsSection(context),
                      SizedBox(height: 10.h),
                      _buildNumberOfSeatsSection(context),
                      SizedBox(height: 10.h),
                      _buildNumberOfChildSeatsSection(context),
                      SizedBox(height: 10.h),
                      _buildCarShapeSection(context),
                      SizedBox(height: 24.h),
                      _buildNavigationButtonsSection(context),
                      SizedBox(height: 38.h),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }

  Widget _buildStepperSection(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 3,
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

  Widget _buildCarMileageSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_car_mileage".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildKmone(context),
        ],
      ),
    );
  }

  Widget _buildKmone(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.kmoneController,
        //   builder: (context, kmoneController) {
        //     return
        CustomTextFormField(
      //  controller: kmoneController,
      hintText: "lbl_km".tr,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildCarStatusSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_car_status".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          // BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
          //     CompanyAddCarStepThreeModel?>(
          //   selector: (state) => state.companyAddCarStepThreeModelObj?? CompanyAddCarStepThreeModel(),
          //   builder: (context, companyAddCarStepThreeModelObj) {
          //     return
          CustomDropDown(
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
            items:
                //  companyAddCarStepThreeModelObj?.dropdownItemList ??
                [
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11')
            ],
            contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
            //   );
            // },
          ),
        ],
      ),
    );
  }

  Widget _buildYearOfManufactureSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_year_of_manufacture".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildEdittextfour(context),
        ],
      ),
    );
  }

  Widget _buildEdittextfour(BuildContext context) {
    return
        // BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.edittextfourController,
        //   builder: (context, edittextfourController) {
        //     return
        CustomTextFormField(
      // controller: edittextfourController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildRegistrationDateSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_registration_date".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildDate(context),
        ],
      ),
    );
  }

  Widget _buildDate(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.dateController,
        //   builder: (context, dateController) {
        //     return
        CustomTextFormField(
      // controller: dateController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildNumberOfOwnersSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_number_of_owners".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildEdittextone(context),
        ],
      ),
    );
  }

  Widget _buildEdittextone(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.edittextoneController,
        //   builder: (context, edittextoneController) {
        //     return
        CustomTextFormField(
      // controller: edittextoneController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildFuelTypeSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_fuel_type".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          // BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
          //     CompanyAddCarStepThreeModel?>(
          //   selector: (state) => state.companyAddCarStepThreeModelObj ?? CompanyAddCarStepThreeModel() ,
          //   builder: (context, companyAddCarStepThreeModelObj) {
          //     return
          CustomDropDown(
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
            items:
                //    companyAddCarStepThreeModelObj?.dropdownItemList1 ??
                [
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11')
            ],
            contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
            //   );
            // },
          ),
        ],
      ),
    );
  }

  Widget _buildNumberOfHorsesSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_number_of_horses".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildEdittextTwo(context),
        ],
      ),
    );
  }

  Widget _buildEdittextTwo(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.edittexttwoController,
        //   builder: (context, edittexttwoController) {
        //     return
        CustomTextFormField(
      //  controller: edittexttwoController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildEngineTorqueSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_engine_torque".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildEdittextThree(context),
        ],
      ),
    );
  }

  Widget _buildEdittextThree(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.edittextthreeController,
        //   builder: (context, edittextthreeController) {
        //     return
        CustomTextFormField(
      //  controller: edittextthreeController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildTransmissionTypeSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_transmission_type".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          // BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
          //     CompanyAddCarStepThreeModel?>(
          //   selector: (state) => state.companyAddCarStepThreeModelObj?? CompanyAddCarStepThreeModel(),
          //   builder: (context, companyAddCarStepThreeModelObj) {
          //     return
          CustomDropDown(
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
            items:
                // companyAddCarStepThreeModelObj?.dropdownItemList2 ??
                [
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11')
            ],
            contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
            //   );
            // },
          ),
        ],
      ),
    );
  }

  // Widget _buildEdittextFive(BuildContext context) {
  //   return BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
  //       TextEditingController?>(
  //     selector: (state) => state.edittextfiveController,
  //     builder: (context, edittextfiveController) {
  //       return CustomTextFormField(

  //         controller: edittextfiveController,
  //         contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
  //       );
  //     },
  //   );
  // }
  Widget _buildNumberOfDoorsSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_number_of_doors".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          // BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
          //     CompanyAddCarStepThreeModel?>(
          //   selector: (state) => state.companyAddCarStepThreeModelObj ?? CompanyAddCarStepThreeModel(),
          //   builder: (context, companyAddCarStepThreeModelObj) {
          //     return
          CustomDropDown(
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
            items:
                //companyAddCarStepThreeModelObj?.dropdownItemList3 ??
                [
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11')
            ],
            contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
            //   );
            // },
          ),
        ],
      ),
    );
  }

  // Widget _buildEdittextSix(BuildContext context) {
  //   return BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
  //       TextEditingController?>(
  //     selector: (state) => state.edittextsixController,
  //     builder: (context, edittextsixController) {
  //       return CustomTextFormField(
  //    //     controller: edittextsixController,
  //         contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
  //       );
  //     },
  //   );
  // }

  Widget _buildNumberOfSeatsSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_number_of_seats".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildEdittextSeven(context),
        ],
      ),
    );
  }

  Widget _buildEdittextSeven(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.edittextsevenController,
        //   builder: (context, edittextsevenController) {
        //     return
        CustomTextFormField(
      //  controller: edittextsevenController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildNumberOfChildSeatsSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_number_of_child_seats".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          _buildEdittextEight(context),
        ],
      ),
    );
  }

  Widget _buildEdittextEight(BuildContext context) {
    return
        //  BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
        //     TextEditingController?>(
        //   selector: (state) => state.edittexteightController,
        //   builder: (context, edittexteightController) {
        //     return
        CustomTextFormField(
      // controller: edittexteightController,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
    );
    //   },
    // );
  }

  Widget _buildCarShapeSection(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_car_shape".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          // BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
          //     CompanyAddCarStepThreeModel?>(
          //   selector: (state) => state.companyAddCarStepThreeModelObj?? CompanyAddCarStepThreeModel(),
          //   builder: (context, companyAddCarStepThreeModelObj) {
          //     return
          CustomDropDown(
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
            items:
                //  companyAddCarStepThreeModelObj?.dropdownItemList4 ??
                [
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11'),
              // SelectionPopupModel(title: '11')
            ],
            contentPadding: EdgeInsets.fromLTRB(16.h, 8.h, 10.h, 8.h),
            //   );
            // },
          ),
        ],
      ),
    );
  }

  // Widget _buildEdittextNine(BuildContext context) {
  //   return BlocSelector<CompanyAddCarStepThreeBloc, CompanyAddCarStepThreeState,
  //       TextEditingController?>(
  //     selector: (state) => state.edittextoneController,
  //     builder: (context, edittextnineController) {
  //       return CustomTextFormField(
  //         //  controller: edittextnineController,
  //         contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
  //       );
  //     },
  //   );
  // }

  Widget _buildNavigationButtonsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomElevatedButton(
              context: context,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CompanyAddCarStepFourScreen(),
                  ),
                );
              },
              text: "lbl_next".tr,
              //   style: CustomButtonStyles.primary,
            ),
          ),
          SizedBox(width: 6.h),
          Expanded(
            child: CustomElevatedButton(
              context: context,
              onPressed: () {
                Navigator.pop(context);
              },
              text: "lbl_back".tr,
            ),
          ),
        ],
      ),
    );
  }
}
