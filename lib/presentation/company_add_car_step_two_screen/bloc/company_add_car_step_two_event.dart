part of 'company_add_car_step_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// CompanyAddCarStepTwo widget.
/// Events must be immutable and implement the [Equatable] interface.
class CompanyAddCarStepTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CompanyAddCarStepTwo widget is first created.
class CompanyAddCarStepTwoInitialEvent extends CompanyAddCarStepTwoEvent {
  @override
  List<Object?> get props => [];
}
