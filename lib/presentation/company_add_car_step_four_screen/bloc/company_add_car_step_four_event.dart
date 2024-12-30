part of 'company_add_car_step_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// CompanyAddCarStepFour widget.
/// Events must be immutable and implement the [Equatable] interface.
class CompanyAddCarStepFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CompanyAddCarStepFour widget is first created.
class CompanyAddCarStepFourInitialEvent extends CompanyAddCarStepFourEvent {
  @override
  List<Object?> get props => [];
}
