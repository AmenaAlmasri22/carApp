import 'package:amena_s_application4/presentation/company_add_car_step_four_screen/models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

part 'company_add_car_step_four_event.dart';
part 'company_add_car_step_four_state.dart';

/// A bloc that manages the state of a CompanyAddCarStepFour according to the event that is dispatched to it.
class CompanyAddCarStepFourBloc
    extends Bloc<CompanyAddCarStepFourEvent, CompanyAddCarStepFourState> {
  CompanyAddCarStepFourBloc(CompanyAddCarStepFourState initialState)
      : super(initialState) {
    on<CompanyAddCarStepFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CompanyAddCarStepFourInitialEvent event,
    Emitter<CompanyAddCarStepFourState> emit,
  ) async {
    emit(
      state.copyWith(
        expirationDateInputController: TextEditingController(),
        descriptionInputController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        companyAddCarStepFourModelObj:
            state.companyAddCarStepFourModelObj?.copyWith(
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
      ),
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
      ),
    ];
  }
}
