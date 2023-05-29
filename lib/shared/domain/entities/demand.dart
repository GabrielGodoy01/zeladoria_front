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

  Demand({
    this.id,
    required this.demandStatus,
    required this.description,
    required this.service,
    required this.adress,
    required this.createdAt,
    required this.updatedAt,
  });
}
