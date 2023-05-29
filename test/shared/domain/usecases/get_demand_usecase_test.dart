import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/demand.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';
import 'package:clean_flutter_template/shared/domain/enums/demand_status_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/service_type_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/subservice_type_enum.dart';
import 'package:clean_flutter_template/shared/domain/repositories/demand_repository_interface.dart';
import 'package:clean_flutter_template/shared/domain/usecases/get_demand_usecase.dart';
import 'package:clean_flutter_template/shared/helpers/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DemandRepositoryMockSuccess extends Mock implements IDemandRepository {
  @override
  Future<Either<Failure, Demand>> getDemand(String id) async {
    var demand = Demand(
      id: 'id',
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
    );
    return right(demand);
  }
}

class DemandRepositoryMockFailed extends Mock implements IDemandRepository {
  @override
  Future<Either<Failure, Demand>> getDemand(String id) async {
    return left(Failure(message: 'Error'));
  }
}

void main() {
  late GetDemandUsecase usecase;
  IDemandRepository repositorySuccess = DemandRepositoryMockSuccess();
  IDemandRepository repositoryFailed = DemandRepositoryMockFailed();

  setUpAll(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  group('[TEST] - GetDemandUsecase', () {
    test('should return an Demand', () async {
      usecase = GetDemandUsecase(repositorySuccess);
      final result = await usecase('id');

      expect(result.fold(id, id), isA<Demand>());
    });

    test('should return an Failure', () async {
      usecase = GetDemandUsecase(repositoryFailed);
      final result = await usecase('123');

      expect(result.fold(id, id), isA<Failure>());
    });
  });
}
