part of 'company_add_car_step_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// CompanyAddCarStepOne widget.
/// 
/// Events must be immutable and implement the [Equatable] interface.
class CompanyAddCarStepOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CompanyAddCarStepOne widget is first created.
class CompanyAddCarStepOneInitialEvent extends CompanyAddCarStepOneEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing checkbox
// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends CompanyAddCarStepOneEvent {
  ChangeCheckBoxEvent({required this.value});
  bool value;

  @override
  List<Object?> get props => [value];
}

/// Event for changing checkbox
// ignore_for_file: must_be_immutable
class ChangeCheckBox1Event extends CompanyAddCarStepOneEvent {
  ChangeCheckBox1Event({required this.value});
  bool value;

  @override
  List<Object?> get props => [value];
}

/// Event for changing checkbox
// ignore_for_file: must_be_immutable
class ChangeCheckBox2Event extends CompanyAddCarStepOneEvent {
  ChangeCheckBox2Event({required this.value});
  bool value;

  @override
  List<Object?> get props => [value];
}

/// Event for changing checkbox
// ignore_for_file: must_be_immutable
class ChangeCheckBox3Event extends CompanyAddCarStepOneEvent {
  ChangeCheckBox3Event({required this.value});
  bool value;

  @override
  List<Object?> get props => [value];
}

class ChangeCheckBox4Event extends CompanyAddCarStepOneEvent {
  ChangeCheckBox4Event({required this.value});
  bool value;

  @override
  List<Object?> get props => [value];
}

/// Event for changing checkbox
// ignore_for_file: must_be_immutable
class ChangeCheckBox5Event extends CompanyAddCarStepOneEvent {
  ChangeCheckBox5Event({required this.value});
  bool value;

  @override
  List<Object?> get props => [value];
}
