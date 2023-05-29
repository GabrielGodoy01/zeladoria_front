import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';
import 'package:clean_flutter_template/shared/domain/enums/service_type_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/subservice_type_enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  test('[TEST] - service', () {
    expect(
      () => Service(
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
      isNotNull,
    );
  });
}
