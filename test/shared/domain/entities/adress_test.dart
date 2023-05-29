import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  test('[TEST] - adress', () {
    expect(
      () => Adress(
        street: 'Rua 1',
        cep: '12345678',
        number: 1,
        district: 'Bairro 1',
        city: 'Cidade 1',
        state: 'Estado 1',
        lat: 1.0,
        lng: 1.0,
      ),
      isNotNull,
    );
  });
}
