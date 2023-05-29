// ignore_for_file: constant_identifier_names

import 'package:clean_flutter_template/app/modules/user/user_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EnvironmentConfig {
  static const ENV = String.fromEnvironment(
    'ENV',
  );

  static const MSS_USER_BASE_URL = String.fromEnvironment(
    'MSS_USER_BASE_URL',
  );

  // static IDemandRepository getUserRepo() {
  //   awaitModular();
  //   EnvironmentEnum value = EnvironmentEnum.values.firstWhere(
  //     (element) {
  //       return element.name.toUpperCase() == ENV.toUpperCase();
  //     },
  //     orElse: () => EnvironmentEnum.DEV,
  //   );
  //   if (value == EnvironmentEnum.DEV) {
  //     return UserRepositoryMock();
  //   } else if (value == EnvironmentEnum.HOMOLOG) {
  //     return UserRepositoryHttp(
  //         datasource: Modular.get<IUserDatasource>(),
  //         storage: Modular.get<UserLocalStorage>());
  //   }
  //   // else if (value == EnvironmentEnum.PROD) {
  //   //   return null;
  //   else {
  //     return UserRepositoryMock();
  //   }
  // }
}

Future awaitModular() async {
  return await Modular.isModuleReady<UserModule>();
}
