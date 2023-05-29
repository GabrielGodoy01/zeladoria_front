import 'package:dartz/dartz.dart';

import '../../helpers/errors/errors.dart';
import '../entities/demand.dart';
import '../repositories/demand_repository_interface.dart';

abstract class IDeleteDemandUsecase {
  Future<Either<Failure, Demand>> call(String id);
}

class DeleteDemandUsecase implements IDeleteDemandUsecase {
  final IDemandRepository repository;

  DeleteDemandUsecase({required this.repository});

  @override
  Future<Either<Failure, Demand>> call(String id) async {
    return await repository.deleteDemand(id);
  }
}
