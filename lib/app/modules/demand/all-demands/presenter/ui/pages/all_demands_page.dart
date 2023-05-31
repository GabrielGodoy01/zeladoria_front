import 'package:clean_flutter_template/shared/domain/entities/demand.dart';
import 'package:clean_flutter_template/shared/helpers/errors/errors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../../shared/helpers/utils/screen_helper.dart';
import '../../controller/all_demands_controller.dart';
import '../states/all_demands_state.dart';

class AllDemandsPage extends StatelessWidget {
  const AllDemandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Modular.get<AllDemandsController>();
    return Scaffold(
      body: Center(
        child: SizedBox(
            width: ScreenHelper.width(context) < ScreenHelper.breakpointTablet
                ? ScreenHelper.width(context)
                : ScreenHelper.breakpointTablet,
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenHelper.width(context) <
                            ScreenHelper.breakpointTablet
                        ? 16
                        : 0),
                child: Observer(builder: (_) {
                  var state = controller.state;

                  if (state is SuccessAllDemandsState) {
                    return buildSucess(state.listDemands);
                  } else if (state is ErrorAllDemandsState) {
                    return buildError(state.error);
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }))),
      ),
    );
  }

  Widget buildSucess(List<Demand> listDemands) {
    return ListView.builder(
        itemCount: listDemands.length,
        itemBuilder: (context, index) {
          var demand = listDemands[index];
          return ListTile(
            title: Text(demand.service.technicalName),
            subtitle: Text(demand.description),
          );
        });
  }

  Widget buildError(Failure error) {
    return Center(
      child: Text(error.message),
    );
  }
}
