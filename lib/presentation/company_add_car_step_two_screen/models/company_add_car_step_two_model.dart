import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [company_add_car_step_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class CompanyAddCarStepTwoModel extends Equatable {
  CompanyAddCarStepTwoModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.dropdownItemList2 = const [],
  });

  List<SelectionPopupModel> dropdownItemList;
  List<SelectionPopupModel> dropdownItemList1;
  List<SelectionPopupModel> dropdownItemList2;

  CompanyAddCarStepTwoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
  }) {
    return CompanyAddCarStepTwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1, dropdownItemList2];
}
