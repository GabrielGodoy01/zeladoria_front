import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';

import '../enums/service_type_enum.dart';

class Service {
  final ServiceTypeEnum serviceType;
  final Subservice subservice;
  final String technicalName;
  final String? popularName;

  Service({
    required this.serviceType,
    required this.subservice,
    required this.technicalName,
    this.popularName,
  });
}
