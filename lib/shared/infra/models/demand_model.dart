import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/demand.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import 'package:clean_flutter_template/shared/domain/enums/demand_status_enum.dart';

class DemandModel extends Demand {
  DemandModel(
      {super.id,
      required super.demandStatus,
      required super.description,
      required super.service,
      required super.adress,
      required super.createdAt,
      required super.updatedAt});

  DemandModel copyWith({
    String? id,
    DemandStatusEnum? demandStatus,
    String? description,
    Service? service,
    Adress? adress,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DemandModel(
      id: id ?? this.id,
      demandStatus: demandStatus ?? this.demandStatus,
      description: description ?? this.description,
      service: service ?? this.service,
      adress: adress ?? this.adress,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
