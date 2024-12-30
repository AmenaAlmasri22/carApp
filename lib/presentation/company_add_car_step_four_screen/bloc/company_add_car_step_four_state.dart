part of 'company_add_car_step_four_bloc.dart';

/// Represents the state of CompanyAddCarStepFour in the application.
/// ignore_for_file: must_be_immutable
class CompanyAddCarStepFourState extends Equatable {
  CompanyAddCarStepFourState({
    this.expirationDateInputController,
    this.descriptionInputController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.selectedDropDownValue4,
    this.companyAddCarStepFourModelObj,
  });

  TextEditingController? expirationDateInputController;
  TextEditingController? descriptionInputController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  SelectionPopupModel? selectedDropDownValue2;
  SelectionPopupModel? selectedDropDownValue3;
  SelectionPopupModel? selectedDropDownValue4;
  CompanyAddCarStepFourModel? companyAddCarStepFourModelObj;

  @override
  List<Object?> get props => [
        expirationDateInputController,
        descriptionInputController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        selectedDropDownValue4,
        companyAddCarStepFourModelObj,
      ];

  CompanyAddCarStepFourState copyWith({
    TextEditingController? expirationDateInputController,
    TextEditingController? descriptionInputController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    CompanyAddCarStepFourModel? companyAddCarStepFourModelObj,
  }) {
    return CompanyAddCarStepFourState(
      expirationDateInputController: expirationDateInputController ??
          this.expirationDateInputController,
      descriptionInputController: descriptionInputController ??
          this.descriptionInputController,
      selectedDropDownValue: selectedDropDownValue ??
          this.selectedDropDownValue,
      selectedDropDownValue1: selectedDropDownValue1 ??
          this.selectedDropDownValue1,
      selectedDropDownValue2: selectedDropDownValue2 ??
          this.selectedDropDownValue2,
      selectedDropDownValue3: selectedDropDownValue3 ??
          this.selectedDropDownValue3,
      selectedDropDownValue4: selectedDropDownValue4 ??
          this.selectedDropDownValue4,
      companyAddCarStepFourModelObj: companyAddCarStepFourModelObj ??
          this.companyAddCarStepFourModelObj,
    );
  }
}
