import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/demand.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';
import 'package:clean_flutter_template/shared/domain/enums/demand_status_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/service_type_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/subservice_type_enum.dart';
import 'package:clean_flutter_template/shared/helpers/errors/errors.dart';
import 'package:clean_flutter_template/shared/infra/models/demand_model.dart';
import 'package:clean_flutter_template/shared/infra/repositories/demand_repository_mock.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var demand = DemandModel(
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
  );

  setUp(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  group('[TEST] - createDemand', () {
    test('should return a Demand', () async {
      var repository = DemandRepositoryMock();
      var result = await repository.createDemand(demand);
      expect(result.fold(id, id), isA<Demand>());
    });
  });

  group('[TEST] - deleteDemand', () {
    test('should return a Demand', () async {
      var repository = DemandRepositoryMock();
      var lenthBefore = repository.demands.length;

      var result = await repository.deleteDemand('0');
      expect(result.fold(id, id), isA<Demand>());
      expect(repository.demands.length, lenthBefore - 1);
    });

    test('should return NoItemsFound', () async {
      DemandRepositoryMock repository = DemandRepositoryMock();

      var response = await repository.deleteDemand('99999999');

      expect(response.fold(id, id), isA<NoItemsFound>());
    });
  });

  group('[TEST] - updateDemand', () {
    test('should return a Demand', () async {
      DemandRepositoryMock repository = DemandRepositoryMock();

      var response = await repository.updateDemand(demand);
      expect(response.fold(id, id), isA<Demand>());
    });

    test('should return NoItemsFound', () async {
      DemandRepositoryMock repository = DemandRepositoryMock();

      var response =
          await repository.updateDemand(demand.copyWith(id: '9999999'));

      expect(response.fold(id, id), isA<NoItemsFound>());
    });
  });

  group('[TEST] - getUser', () {
    test('should return a Demand', () async {
      DemandRepositoryMock repository = DemandRepositoryMock();

      var response = await repository.getDemand('0');
      expect(response.fold(id, id), isA<Demand>());
    });

    test('should return NoItemsFound', () async {
      DemandRepositoryMock repository = DemandRepositoryMock();

      var response = await repository.getDemand('9999999');

      expect(response.fold(id, id), isA<NoItemsFound>());
    });
  });

  group('[TEST] - getAllDemands', () {
    test('should return a List<Demand>', () async {
      DemandRepositoryMock repository = DemandRepositoryMock();

      var response = await repository.getAllDemands();
      expect(response.fold(id, id), isA<List<Demand>>());
    });
  });
}
