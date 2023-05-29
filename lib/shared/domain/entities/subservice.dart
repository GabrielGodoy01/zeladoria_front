import '../enums/subservice_type_enum.dart';

class Subservice {
  final SubserviceTypeEnum subserviceType;
  final String orientation;
  final String unit;
  final int quantity;

  Subservice({
    required this.subserviceType,
    required this.orientation,
    required this.unit,
    required this.quantity,
  });
}
