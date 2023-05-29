import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';
import 'package:clean_flutter_template/shared/domain/enums/subservice_type_enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  test('[TEST] - subservice', () {
    expect(
      () => Subservice(
        subserviceType: SubserviceTypeEnum.LANDSCAPE_AREAS,
        orientation: 'orientation',
        unit: 'unit',
        quantity: 1,
      ),
      isNotNull,
    );
  });
}
