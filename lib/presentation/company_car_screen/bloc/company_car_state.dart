part of 'company_car_bloc.dart';

/// Represents the state of CompanyCar in the application.
// ignore_for_file: must_be_immutable
class CompanyCarState extends Equatable {
  CompanyCarState({this.companyCarModelObj});

  CompanyCarModel? companyCarModelObj;

  @override
  List<Object?> get props => [companyCarModelObj];

  CompanyCarState copyWith({CompanyCarModel? companyCarModelObj}) {
    return CompanyCarState(
      companyCarModelObj: companyCarModelObj ?? this.companyCarModelObj,
    );
  }
}
 