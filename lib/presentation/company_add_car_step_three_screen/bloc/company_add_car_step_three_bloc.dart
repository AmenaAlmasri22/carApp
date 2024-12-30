import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/company_add_car_step_three_model.dart';

part 'company_add_car_step_three_event.dart';
part 'company_add_car_step_three_state.dart';

/// A bloc that manages the state of a CompanyAddCarStepThree according to the event that is dispatched to it.
class CompanyAddCarStepThreeBloc
    extends Bloc<CompanyAddCarStepThreeEvent, CompanyAddCarStepThreeState> {
  CompanyAddCarStepThreeBloc(CompanyAddCarStepThreeState initialState)
      : super(initialState) {
    on<CompanyAddCarStepThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CompanyAddCarStepThreeInitialEvent event,
    Emitter<CompanyAddCarStepThreeState> emit,
  ) async {
    emit(
      state.copyWith(
        kmoneController: TextEditingController(),
        edittextfourController: TextEditingController(),
        dateController: TextEditingController(),
        edittextoneController: TextEditingController(),
        psoneController: TextEditingController(),
        cconeController: TextEditingController(),
        edittexttwoController: TextEditingController(),
        edittextthreeController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        companyAddCarStepThreeModelObj: state.companyAddCarStepThreeModelObj
            ?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
          dropdownItemList3: fillDropdownItemList3(),
          dropdownItemList4: fillDropdownItemList4(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList3() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList4() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }
}
