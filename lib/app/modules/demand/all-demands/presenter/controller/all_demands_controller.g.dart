// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_demands_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AllDemandsController on AllDemandsControllerBase, Store {
  late final _$stateAtom =
      Atom(name: 'AllDemandsControllerBase.state', context: context);

  @override
  AllDemandsState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(AllDemandsState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$getAllDemandsAsyncAction =
      AsyncAction('AllDemandsControllerBase.getAllDemands', context: context);

  @override
  Future<void> getAllDemands() {
    return _$getAllDemandsAsyncAction.run(() => super.getAllDemands());
  }

  late final _$AllDemandsControllerBaseActionController =
      ActionController(name: 'AllDemandsControllerBase', context: context);

  @override
  dynamic setPageState(AllDemandsState value) {
    final _$actionInfo = _$AllDemandsControllerBaseActionController.startAction(
        name: 'AllDemandsControllerBase.setPageState');
    try {
      return super.setPageState(value);
    } finally {
      _$AllDemandsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
