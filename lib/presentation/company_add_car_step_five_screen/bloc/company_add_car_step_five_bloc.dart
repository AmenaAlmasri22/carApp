// Imports
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'company_add_car_step_five_event.dart';
import 'company_add_car_step_five_state.dart';

// Bloc Class
class CompanyAddCarStepFiveBloc extends Bloc<CompanyAddCarStepFiveEvent, CompanyAddCarStepFiveState> {
  CompanyAddCarStepFiveBloc(CompanyAddCarStepFiveState initialState) : super(initialState) {
    on<CompanyAddCarStepFiveInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
    on<ChangeCheckBox6Event>(_changeCheckBox6);
  }

  // Initialization Method
  Future<void> _onInitialize(
    CompanyAddCarStepFiveInitialEvent event,
    Emitter<CompanyAddCarStepFiveState> emit,
  ) async {
    emit(state.copyWith(
      // Initialize all controllers and states here
      pricetwoController: TextEditingController(),
      edittexttwoController: TextEditingController(),
      settingsoneController: TextEditingController(),
      settingsthreeController: TextEditingController(),
      pricethreeController: TextEditingController(),
      useroneController: TextEditingController(),
      edittextoneController: TextEditingController(),
      settingstwoController: TextEditingController(),
      yesone: false,
      noone: false,
      cashone: false,
      instalmentsone: false,
      giftone: false,
      withbenefits: false,
      nointerestone: false,
    ));
  }

  // Event Handlers for each checkbox
  void _changeCheckBox(ChangeCheckBoxEvent event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(yesone: event.value));
  }

  void _changeCheckBox1(ChangeCheckBox1Event event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(noone: event.value));
  }

  void _changeCheckBox2(ChangeCheckBox2Event event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(cashone: event.value));
  }

  void _changeCheckBox3(ChangeCheckBox3Event event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(instalmentsone: event.value));
  }

  void _changeCheckBox4(ChangeCheckBox4Event event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(giftone: event.value));
  }

  void _changeCheckBox5(ChangeCheckBox5Event event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(withbenefits: event.value));
  }

  void _changeCheckBox6(ChangeCheckBox6Event event, Emitter<CompanyAddCarStepFiveState> emit) {
    emit(state.copyWith(nointerestone: event.value));
  }
}
