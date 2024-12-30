import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/company_add_car_step_one_model.dart';

part 'company_add_car_step_one_event.dart';
part 'company_add_car_step_one_state.dart';

/// A bloc that manages the state of a CompanyAddCarStepOne according to the event that is dispatched to it.
class CompanyAddCarStepOneBloc extends Bloc<CompanyAddCarStepOneEvent, CompanyAddCarStepOneState> {
  CompanyAddCarStepOneBloc(CompanyAddCarStepOneState initialState) : super(initialState) {
    on<CompanyAddCarStepOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
  }

  _onInitialize(
    CompanyAddCarStepOneInitialEvent event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) async {
    emit(state.copyWith(
      sellone: false,
      longrentone: false,
      shortrentone: false,
      exportone: false,
      newone: false,
      usedone: false,
    ));

    emit(state.copyWith(
      companyAddCarStepOneModelObj: state.companyAddCarStepOneModelObj?.copyWith(
        dropdownItemList: fillDropdownItemList(),
        dropdownItemList1: fillDropdownItemList1(),
      ),
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) {
    emit(state.copyWith(sellone: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) {
    emit(state.copyWith(longrentone: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) {
    emit(state.copyWith(shortrentone: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) {
    emit(state.copyWith(exportone: event.value));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) {
    emit(state.copyWith(newone: event.value));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<CompanyAddCarStepOneState> emit,
  ) {
    emit(state.copyWith(usedone: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true, name: '',
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two", name: '',
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
}
