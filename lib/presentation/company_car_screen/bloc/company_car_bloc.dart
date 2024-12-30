import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/company_car_model.dart';
import '../models/companycargrid_item_model.dart';

part 'company_car_event.dart';
part 'company_car_state.dart';

/// A bloc that manages the state of a CompanyCar according to the event that is dispatched to it.
class CompanyCarBloc extends Bloc<CompanyCarEvent, CompanyCarState> {
  CompanyCarBloc(CompanyCarState initialState) : super(initialState) {
    on<CompanyCarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CompanyCarInitialEvent event,
    Emitter<CompanyCarState> emit,
  ) async {
    emit(
      state.copyWith(
        companyCarModelObj: state.companyCarModelObj?.copyWith(
          companycargridItemList: fillCompanycargridItemList(),
        ),
      ),
    );
  }

  List<CompanycargridItemModel> fillCompanycargridItemList() {
    return [
      CompanycargridItemModel(
        e300: "E - 300",
        mercedesbenz: "Mercedes benz",
        zipcode: "3000 ",
        image: ImageConstant.imgSettings,
      ),
      CompanycargridItemModel(
        e300: "E - 300",
        mercedesbenz: "Mercedes benz",
        zipcode: "3000 ",
        image: ImageConstant.imgSettings,
      ),
      CompanycargridItemModel(
        e300: "E - 300",
        mercedesbenz: "Mercedes benz",
        zipcode: "3000 ",
        image: ImageConstant.imgSettings,
      ),
      CompanycargridItemModel(
        e300: "E - 300",
        mercedesbenz: "Mercedes benz",
        zipcode: "3000 ",
        image: ImageConstant.imgSettings,
      ),
      CompanycargridItemModel(
        e300: "E - 300",
        mercedesbenz: "Mercedes benz",
        zipcode: "3000 ",
        image: ImageConstant.imgSettings,
      ),
      CompanycargridItemModel(
        mercedesbenz: "E - 300",
      ),
    ];
  }
}
