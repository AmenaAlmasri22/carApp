part of 'company_add_car_step_three_bloc.dart';

/// Represents the state of CompanyAddCarStepThree in the application.
///
/// ignore_for_file: must_be_immutable
class CompanyAddCarStepThreeState extends Equatable {
  CompanyAddCarStepThreeState({
    this.kmoneController,
    this.edittextfourController,
    this.dateController,
    this.edittextoneController,
    this.psoneController,
    this.cconeController,
    this.edittexttwoController,
    this.edittextthreeController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.selectedDropDownValue4,
    this.companyAddCarStepThreeModelObj,
  });

  TextEditingController? kmoneController;
  TextEditingController? edittextfourController;
  TextEditingController? dateController;
  TextEditingController? edittextoneController;
  TextEditingController? psoneController;
  TextEditingController? cconeController;
  TextEditingController? edittexttwoController;
  TextEditingController? edittextthreeController;

  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  SelectionPopupModel? selectedDropDownValue2;
  SelectionPopupModel? selectedDropDownValue3;
  SelectionPopupModel? selectedDropDownValue4;

  CompanyAddCarStepThreeModel? companyAddCarStepThreeModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        selectedDropDownValue4,
        companyAddCarStepThreeModelObj,
      ];

  get edittextsixController => null;

  get edittextsevenController => null;

  get edittexteightController => null;

  get edittextfiveController => null;

  CompanyAddCarStepThreeState copyWith({
    TextEditingController? kmoneController,
    TextEditingController? edittextfourController,
    TextEditingController? dateController,
    TextEditingController? edittextoneController,
    TextEditingController? psoneController,
    TextEditingController? cconeController,
    TextEditingController? edittexttwoController,
    TextEditingController? edittextthreeController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    CompanyAddCarStepThreeModel? companyAddCarStepThreeModelObj,
  }) {
    return CompanyAddCarStepThreeState(
      kmoneController: kmoneController ?? this.kmoneController,
      edittextfourController:
          edittextfourController ?? this.edittextfourController,
      dateController: dateController ?? this.dateController,
      edittextoneController:
          edittextoneController ?? this.edittextoneController,
      psoneController: psoneController ?? this.psoneController,
      cconeController: cconeController ?? this.cconeController,
      edittexttwoController:
          edittexttwoController ?? this.edittexttwoController,
      edittextthreeController:
          edittextthreeController ?? this.edittextthreeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      selectedDropDownValue4:
          selectedDropDownValue4 ?? this.selectedDropDownValue4,
      companyAddCarStepThreeModelObj:
          companyAddCarStepThreeModelObj ?? this.companyAddCarStepThreeModelObj,
    );
  }
}
