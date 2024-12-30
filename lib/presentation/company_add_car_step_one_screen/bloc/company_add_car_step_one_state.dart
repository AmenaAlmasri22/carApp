part of 'company_add_car_step_one_bloc.dart';

/// Represents the state of CompanyAddCarStepOne in the application.
// ignore_for_file: must_be_immutable
class CompanyAddCarStepOneState extends Equatable {
  CompanyAddCarStepOneState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.sellone = false,
    this.longrentone = false,
    this.shortrentone = false,
    this.exportone = false,
    this.newone = false,
    this.usedone = false,
    this.companyAddCarStepOneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  CompanyAddCarStepOneModel? companyAddCarStepOneModelObj;
  bool sellone;
  bool longrentone;
  bool shortrentone;
  bool exportone;
  bool newone;
  bool usedone;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        sellone,
        longrentone,
        shortrentone,
        exportone,
        newone,
        usedone,
        companyAddCarStepOneModelObj,
      ];

  CompanyAddCarStepOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    bool? sellone,
    bool? longrentone,
    bool? shortrentone,
    bool? exportone,
    bool? newone,
    bool? usedone,
    CompanyAddCarStepOneModel? companyAddCarStepOneModelObj,
  }) {
    return CompanyAddCarStepOneState(
      selectedDropDownValue: selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1: selectedDropDownValue1 ?? this.selectedDropDownValue1,
      sellone: sellone ?? this.sellone,
      longrentone: longrentone ?? this.longrentone,
      shortrentone: shortrentone ?? this.shortrentone,
      exportone: exportone ?? this.exportone,
      newone: newone ?? this.newone,
      usedone: usedone ?? this.usedone,
      companyAddCarStepOneModelObj: companyAddCarStepOneModelObj ?? this.companyAddCarStepOneModelObj,
    );
  }
}
