import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'companycargrid_item_model.dart';

/// This class defines the variables used in the [company_car_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class CompanyCarModel extends Equatable {
  CompanyCarModel({this.companycargridItemList = const []});

  List<CompanycargridItemModel> companycargridItemList;

  CompanyCarModel copyWith({
    List<CompanycargridItemModel>? companycargridItemList,
  }) {
    return CompanyCarModel(
      companycargridItemList: companycargridItemList ?? this.companycargridItemList,
    );
  }

  @override
  List<Object?> get props => [companycargridItemList];
}
