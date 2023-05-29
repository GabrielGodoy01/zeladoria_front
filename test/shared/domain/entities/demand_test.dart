import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/demand.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';
import 'package:clean_flutter_template/shared/domain/enums/demand_status_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/service_type_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/subservice_type_enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  test('[TEST] - demand', () {
    expect(
      () => Demand(
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
      ),
      isNotNull,
    );
  });
}
