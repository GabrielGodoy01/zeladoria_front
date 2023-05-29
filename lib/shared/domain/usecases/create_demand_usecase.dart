import 'package:dartz/dartz.dart';

import '../../helpers/errors/errors.dart';
import '../entities/demand.dart';
import '../repositories/demand_repository_interface.dart';

abstract class ICreateDemandUsecase {
  Future<Either<Failure, Demand>> call(Demand demand);
}

class CreateDemandUsecase implements ICreateDemandUsecase {
  final IDemandRepository repository;

  CreateDemandUsecase(this.repository);

  @override
  Future<Either<Failure, Demand>> call(Demand demand) async {
    return await repository.createDemand(demand);
  }
}
