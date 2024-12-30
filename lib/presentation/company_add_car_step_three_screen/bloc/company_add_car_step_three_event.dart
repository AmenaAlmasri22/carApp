part of 'company_add_car_step_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// CompanyAddCarStepThree widget.
/// 
/// Events must be immutable and implement the [Equatable] interface.
abstract class CompanyAddCarStepThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CompanyAddCarStepThree widget is first created.
class CompanyAddCarStepThreeInitialEvent extends CompanyAddCarStepThreeEvent {
  @override
  List<Object?> get props => [];
}
