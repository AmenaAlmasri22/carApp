import 'package:amena_s_application4/presentation/company_add_car_step_five_screen/models/app_navigation_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CompanyAddCarStepFiveState extends Equatable {
  // Text controllers for various fields
  final TextEditingController? pricetwoController;
  final TextEditingController? pricethreeController;
  final TextEditingController? settingsthreeController;
  final TextEditingController? settingsoneController;
  final TextEditingController? edittexttwoController;
  final TextEditingController? settingstwoController;
  final TextEditingController? edittextoneController;
  final TextEditingController? useroneController;

  // Boolean flags
  final bool yesone;
  final bool noone;
  final bool cashone;
  final bool instalmentsone;
  final bool giftone;
  final bool withbenefits;
  final bool nointerestone;

  // Model object for additional data
  final CompanyAddCarStepFiveModel? companyAddCarStepFiveModelObj;

  // Constructor
  const CompanyAddCarStepFiveState({
    this.pricetwoController,
    this.pricethreeController,
    this.settingsthreeController,
    this.settingsoneController,
    this.edittexttwoController,
    this.settingstwoController,
    this.edittextoneController,
    this.useroneController,
    this.companyAddCarStepFiveModelObj,
    this.yesone = false,
    this.noone = false,
    this.cashone = false,
    this.instalmentsone = false,
    this.giftone = false,
    this.withbenefits = false,
    this.nointerestone = false,
  });

  // Override the props getter from Equatable
  @override
  List<Object?> get props => [
        pricetwoController,
        pricethreeController,
        settingsthreeController,
        settingsoneController,
        edittexttwoController,
        settingstwoController,
        edittextoneController,
        useroneController,
        yesone,
        noone,
        cashone,
        instalmentsone,
        giftone,
        withbenefits,
        nointerestone,
        companyAddCarStepFiveModelObj,
      ];

  // copyWith method to create a new state with updated values
  CompanyAddCarStepFiveState copyWith({
    TextEditingController? pricetwoController,
    TextEditingController? pricethreeController,
    TextEditingController? settingsthreeController,
    TextEditingController? settingsoneController,
    TextEditingController? edittexttwoController,
    TextEditingController? settingstwoController,
    TextEditingController? edittextoneController,
    TextEditingController? useroneController,
    bool? yesone,
    bool? noone,
    bool? cashone,
    bool? instalmentsone,
    bool? giftone,
    bool? withbenefits,
    bool? nointerestone,
    CompanyAddCarStepFiveModel? companyAddCarStepFiveModelObj,
  }) {
    return CompanyAddCarStepFiveState(
      pricetwoController: pricetwoController ?? this.pricetwoController,
      pricethreeController: pricethreeController ?? this.pricethreeController,
      settingsthreeController:
          settingsthreeController ?? this.settingsthreeController,
      settingsoneController:
          settingsoneController ?? this.settingsoneController,
      edittexttwoController:
          edittexttwoController ?? this.edittexttwoController,
      settingstwoController:
          settingstwoController ?? this.settingstwoController,
      edittextoneController:
          edittextoneController ?? this.edittextoneController,
      useroneController: useroneController ?? this.useroneController,
      yesone: yesone ?? this.yesone,
      noone: noone ?? this.noone,
      cashone: cashone ?? this.cashone,
      instalmentsone: instalmentsone ?? this.instalmentsone,
      giftone: giftone ?? this.giftone,
      withbenefits: withbenefits ?? this.withbenefits,
      nointerestone: nointerestone ?? this.nointerestone,
      companyAddCarStepFiveModelObj:
          companyAddCarStepFiveModelObj ?? this.companyAddCarStepFiveModelObj,
    );
  }
}
