import 'dart:ui';

import 'package:clean_flutter_template/generated/l10n.dart';
import 'package:clean_flutter_template/shared/domain/entities/demand.dart';
import 'package:clean_flutter_template/shared/domain/repositories/demand_repository_interface.dart';
import 'package:clean_flutter_template/shared/domain/usecases/get_all_demands_usecase.dart';
import 'package:clean_flutter_template/shared/helpers/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DemandRepositoryMockSuccess extends Mock implements IDemandRepository {
  @override
  Future<Either<Failure, List<Demand>>> getAllDemands() async {
    var demand = <Demand>[];
    return right(demand);
  }
}

class DemandRepositoryMockFailed extends Mock implements IDemandRepository {
  @override
  Future<Either<Failure, List<Demand>>> getAllDemands() async {
    return left(Failure(message: 'Error'));
  }
}

void main() {
  late GetAllDemandsUsecase usecase;
  IDemandRepository repositorySuccess = DemandRepositoryMockSuccess();
  IDemandRepository repositoryFailed = DemandRepositoryMockFailed();

  setUpAll(() async {
    await S.load(const Locale.fromSubtags(languageCode: 'en'));
  });

  group('[TEST] - GetAllDemandsUsecase', () {
    test('should return an List<Demand>', () async {
      usecase = GetAllDemandsUsecase(repositorySuccess);
      final result = await usecase();

      expect(result.fold(id, id), isA<List<Demand>>());
    });

    test('should return an Failure', () async {
      usecase = GetAllDemandsUsecase(repositoryFailed);
      final result = await usecase();

      expect(result.fold(id, id), isA<Failure>());
    });
  });
}
