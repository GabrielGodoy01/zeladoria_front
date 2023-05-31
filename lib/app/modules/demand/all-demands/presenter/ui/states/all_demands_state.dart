import '../../../../../../../shared/domain/entities/demand.dart';
import '../../../../../../../shared/helpers/errors/errors.dart';

abstract class AllDemandsState {}

class StartAllDemandsState implements AllDemandsState {
  const StartAllDemandsState();
}

class LoadingAllDemandsState implements AllDemandsState {
  const LoadingAllDemandsState();
}

class ErrorAllDemandsState implements AllDemandsState {
  final Failure error;
  const ErrorAllDemandsState(this.error);
}

class SuccessAllDemandsState implements AllDemandsState {
  final List<Demand> listDemands;
  const SuccessAllDemandsState(this.listDemands);
}
