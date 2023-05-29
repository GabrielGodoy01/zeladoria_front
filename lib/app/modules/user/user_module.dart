import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../shared/helpers/services/dio_http_request.dart';
import '../../../shared/helpers/services/dio_options.dart';
import '../../../shared/helpers/services/http_request_interface.dart';
import '../../../shared/helpers/services/http_service.dart';
import 'home/presenter/ui/pages/home_page.dart';

class UserModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio(userOptions)),
        Bind<IHttpRequest>((i) => DioHttpRequest(dio: i<Dio>()), export: true),
        Bind<HttpService>((i) => HttpService(httpRequest: i(), storage: i()),
            export: true),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const HomePage(),
        ),
      ];
}
