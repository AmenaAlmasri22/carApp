import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [companycargrid_item_widget] screen.
// ignore_for_file: must_be_immutable
class CompanycargridItemModel extends Equatable {
  CompanycargridItemModel({
    this.e300,
    this.mercedesbenz,
    this.zipcode,
    this.image,
    this.id,
  }) {
    e300 = e300 ?? "E - 300";
    mercedesbenz = mercedesbenz ?? "Mercedes benz";
    zipcode = zipcode ?? "3000 ";
    image = image ?? ImageConstant.imgSettings;
    id = id ?? "";
  }

  String? e300;
  String? mercedesbenz;
  String? zipcode;
  String? image;
  String? id;

  CompanycargridItemModel copyWith({
    String? e300,
    String? mercedesbenz,
    String? zipcode,
    String? image,
    String? id,
  }) {
    return CompanycargridItemModel(
      e300: e300 ?? this.e300,
      mercedesbenz: mercedesbenz ?? this.mercedesbenz,
      zipcode: zipcode ?? this.zipcode,
      image: image ?? this.image,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [e300, mercedesbenz, zipcode, image, id];
}
