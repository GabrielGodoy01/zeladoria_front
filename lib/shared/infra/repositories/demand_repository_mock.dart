import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/demand.dart';

import 'package:clean_flutter_template/shared/helpers/errors/errors.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entities/service.dart';
import '../../domain/entities/subservice.dart';
import '../../domain/enums/demand_status_enum.dart';
import '../../domain/enums/service_type_enum.dart';
import '../../domain/enums/subservice_type_enum.dart';
import '../../domain/repositories/demand_repository_interface.dart';

class DemandRepositoryMock implements IDemandRepository {
  List<Demand> demands = [];

  DemandRepositoryMock() {
    demands = [
      Demand(
        id: '0',
        demandStatus: DemandStatusEnum.IN_PROGRESS,
        description: 'description',
        service: Service(
          serviceType: ServiceTypeEnum.GREEN_AREA,
          subservice: Subservice(
            subserviceType: SubserviceTypeEnum.LANDSCAPE_AREAS,
            orientation: 'orientation',
            unit: 'unit',
            quantity: 1,
          ),
          technicalName: 'technicalName',
          popularName: 'popularName',
        ),
        adress: Adress(
          street: 'street',
          number: 123,
          complement: 'complement',
          district: 'district',
          city: 'city',
          state: 'state',
          cep: '',
          lat: 1.0,
          lng: 1.0,
        ),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Demand(
        id: '1',
        demandStatus: DemandStatusEnum.IN_PROGRESS,
        description: 'description',
        service: Service(
          serviceType: ServiceTypeEnum.GREEN_AREA,
          subservice: Subservice(
            subserviceType: SubserviceTypeEnum.LANDSCAPE_AREAS,
            orientation: 'orientation',
            unit: 'unit',
            quantity: 1,
          ),
          technicalName: 'technicalName',
          popularName: 'popularName',
        ),
        adress: Adress(
          street: 'street',
          number: 123,
          complement: 'complement',
          district: 'district',
          city: 'city',
          state: 'state',
          cep: '',
          lat: 1.0,
          lng: 1.0,
        ),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      )
    ];
  }

  @override
  Future<Either<Failure, Demand>> createDemand(Demand demand) {
    demands.add(demand);
    return Future.value(Right(demand));
  }

  @override
  Future<Either<Failure, Demand>> deleteDemand(String id) {
    demands.removeWhere((element) => element.id == id);
    return Future.value(
        Right(demands.where((element) => element.id == id).first));
  }

  @override
  Future<Either<Failure, List<Demand>>> getAllDemands() {
    return Future.value(Right(demands));
  }

  @override
  Future<Either<Failure, Demand>> getDemand(String id) {
    return Future.value(
        Right(demands.where((element) => element.id == id).first));
  }

  @override
  Future<Either<Failure, Demand>> updateDemand(Demand demand) {
    demands.removeWhere((element) => element.id == demand.id);
    demands.add(demand);
    return Future.value(Right(demand));
  }
}
