import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [company_add_car_step_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class CompanyAddCarStepOneModel extends Equatable {
  CompanyAddCarStepOneModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  });

  List<SelectionPopupModel> dropdownItemList;
  List<SelectionPopupModel> dropdownItemList1;

  CompanyAddCarStepOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return CompanyAddCarStepOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
