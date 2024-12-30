import 'package:equatable/equatable.dart';

// Abstract Event Class for CompanyAddCarStepFive
abstract class CompanyAddCarStepFiveEvent extends Equatable {
  const CompanyAddCarStepFiveEvent();

  @override
  List<Object?> get props => [];
}

// Event for when the widget is first created
class CompanyAddCarStepFiveInitialEvent extends CompanyAddCarStepFiveEvent {
  @override
  List<Object?> get props => [];
}

// Event for changing a checkbox (generalized for all checkboxes)
class ChangeCheckBoxEvent extends CompanyAddCarStepFiveEvent {
  final bool value;

  const ChangeCheckBoxEvent({required this.value});

  @override
  List<Object?> get props => [value];
}

// Event for changing checkbox 1
class ChangeCheckBox1Event extends ChangeCheckBoxEvent {
  const ChangeCheckBox1Event({required bool value}) : super(value: value);
}

// Event for changing checkbox 2
class ChangeCheckBox2Event extends ChangeCheckBoxEvent {
  const ChangeCheckBox2Event({required bool value}) : super(value: value);
}

// Event for changing checkbox 3
class ChangeCheckBox3Event extends ChangeCheckBoxEvent {
  const ChangeCheckBox3Event({required bool value}) : super(value: value);
}

// Event for changing checkbox 4
class ChangeCheckBox4Event extends ChangeCheckBoxEvent {
  const ChangeCheckBox4Event({required bool value}) : super(value: value);
}

// Event for changing checkbox 5
class ChangeCheckBox5Event extends ChangeCheckBoxEvent {
  const ChangeCheckBox5Event({required bool value}) : super(value: value);
}

// Event for changing checkbox 6
class ChangeCheckBox6Event extends ChangeCheckBoxEvent {
  const ChangeCheckBox6Event({required bool value}) : super(value: value);
}
