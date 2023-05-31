import 'package:clean_flutter_template/shared/domain/usecases/get_all_demands_usecase.dart';
import 'package:mobx/mobx.dart';

import '../ui/states/all_demands_state.dart';

part 'all_demands_controller.g.dart';

class AllDemandsController = AllDemandsControllerBase
    with _$AllDemandsController;

abstract class AllDemandsControllerBase with Store {
  final IGetAllDemandsUsecase _getAllDemandsUsecase;

  AllDemandsControllerBase(this._getAllDemandsUsecase) {
    getAllDemands();
  }

  @observable
  AllDemandsState state = const StartAllDemandsState();

  @action
  setPageState(AllDemandsState value) => state = value;

  @action
  Future<void> getAllDemands() async {
    setPageState(const LoadingAllDemandsState());
    var result = await _getAllDemandsUsecase();
    setPageState(result.fold((l) => ErrorAllDemandsState(l),
        (listDemands) => SuccessAllDemandsState(listDemands)));
  }
}
