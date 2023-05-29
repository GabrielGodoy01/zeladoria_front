import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import '../enums/demand_status_enum.dart';

class Demand {
  final String? id;
  final DemandStatusEnum demandStatus;
  final String description;
  final Service service;
  final Adress adress;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const int minNameLenght = 2;

  Demand({
    this.id,
    required this.demandStatus,
    required this.description,
    required this.service,
    required this.adress,
    required this.createdAt,
    required this.updatedAt,
  });

  static bool validateName(String name) {
    if (name.length < Demand.minNameLenght) {
      return false;
    }
    return true;
  }

  static bool validateEmail(String email) {
    RegExp regex = RegExp(
      r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)",
    );
    return regex.hasMatch(email);
  }
}
