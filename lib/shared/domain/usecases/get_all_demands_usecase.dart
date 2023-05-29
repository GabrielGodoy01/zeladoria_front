import 'package:dartz/dartz.dart';

import '../../helpers/errors/errors.dart';
import '../entities/demand.dart';
import '../repositories/demand_repository_interface.dart';

abstract class IGetAllDemandsUsecase {
  Future<Either<Failure, List<Demand>>> call();
}

class GetAllDemandsUsecase implements IGetAllDemandsUsecase {
  final IDemandRepository repository;

  GetAllDemandsUsecase({required this.repository});

  @override
  Future<Either<Failure, List<Demand>>> call() async {
    return await repository.getAllDemands();
  }
}
