part of 'company_car_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// CompanyCar widget.
/// 
/// Events must be immutable and implement the [Equatable] interface.
class CompanyCarEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CompanyCar widget is first created.
class CompanyCarInitialEvent extends CompanyCarEvent {
  @override
  List<Object?> get props => [];
}
