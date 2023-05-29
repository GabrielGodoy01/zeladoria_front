import 'package:dartz/dartz.dart';

import '../../helpers/errors/errors.dart';
import '../entities/demand.dart';

abstract class IDemandRepository {
  Future<Either<Failure, List<Demand>>> getAllDemands();
  Future<Either<Failure, Demand>> getDemand(String id);
  Future<Either<Failure, Demand>> createDemand(Demand demandToCreate);
  Future<Either<Failure, Demand>> updateDemand(Demand demandToUpdate);
  Future<Either<Failure, Demand>> deleteDemand(String id);
}
