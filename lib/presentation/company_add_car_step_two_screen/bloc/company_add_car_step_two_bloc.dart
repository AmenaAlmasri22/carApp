import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/company_add_car_step_two_model.dart';

part 'company_add_car_step_two_event.dart';
part 'company_add_car_step_two_state.dart';

/// A bloc that manages the state of a CompanyAddCarStepTwo according to the event that is dispatched to it.
class CompanyAddCarStepTwoBloc extends Bloc<CompanyAddCarStepTwoEvent, CompanyAddCarStepTwoState> {
  CompanyAddCarStepTwoBloc(CompanyAddCarStepTwoState initialState) : super(initialState) {
    on<CompanyAddCarStepTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CompanyAddCarStepTwoInitialEvent event,
    Emitter<CompanyAddCarStepTwoState> emit,
  ) async {
    emit(
      state.copyWith(
        zipcodeController: TextEditingController(),
        edittextoneController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        companyAddCarStepTwoModelObj: state.companyAddCarStepTwoModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
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
      ),
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
      ),
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
      ),
    ];
  }
}
