import 'package:dartz/dartz.dart';

import '../../helpers/errors/errors.dart';
import '../entities/demand.dart';
import '../repositories/demand_repository_interface.dart';

abstract class IUpdateDemandUsecase {
  Future<Either<Failure, Demand>> call(Demand demand);
}

class UpdateDemandUsecase implements IUpdateDemandUsecase {
  final IDemandRepository repository;

  UpdateDemandUsecase({required this.repository});

  @override
  Future<Either<Failure, Demand>> call(Demand demand) async {
    return await repository.updateDemand(demand);
  }
}
