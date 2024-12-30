part of 'company_add_car_step_two_bloc.dart';

/// Represents the state of CompanyAddCarStepTwo in the application.
// ignore_for_file: must_be_immutable
class CompanyAddCarStepTwoState extends Equatable {
  CompanyAddCarStepTwoState({
    this.zipcodeController,
    this.edittextoneController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.companyAddCarStepTwoModelObj,
  });

  TextEditingController? zipcodeController;
  TextEditingController? edittextoneController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  SelectionPopupModel? selectedDropDownValue2;
  CompanyAddCarStepTwoModel? companyAddCarStepTwoModelObj;

  @override
  List<Object?> get props => [
        zipcodeController,
        edittextoneController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        companyAddCarStepTwoModelObj,
      ];

  CompanyAddCarStepTwoState copyWith({
    TextEditingController? zipcodeController,
    TextEditingController? edittextoneController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    CompanyAddCarStepTwoModel? companyAddCarStepTwoModelObj,
  }) {
    return CompanyAddCarStepTwoState(
      zipcodeController: zipcodeController ?? this.zipcodeController,
      edittextoneController: edittextoneController ?? this.edittextoneController,
      selectedDropDownValue: selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1: selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2: selectedDropDownValue2 ?? this.selectedDropDownValue2,
      companyAddCarStepTwoModelObj: companyAddCarStepTwoModelObj ?? this.companyAddCarStepTwoModelObj,
    );
  }
}
