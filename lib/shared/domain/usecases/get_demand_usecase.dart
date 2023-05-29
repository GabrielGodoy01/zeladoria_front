import 'package:dartz/dartz.dart';

import '../../helpers/errors/errors.dart';
import '../entities/demand.dart';
import '../repositories/demand_repository_interface.dart';

abstract class IGetDemandUsecase {
  Future<Either<Failure, Demand>> call(String id);
}

class GetDemandUsecase implements IGetDemandUsecase {
  final IDemandRepository repository;

  GetDemandUsecase(this.repository);

  @override
  Future<Either<Failure, Demand>> call(String id) async {
    return await repository.getDemand(id);
  }
}
