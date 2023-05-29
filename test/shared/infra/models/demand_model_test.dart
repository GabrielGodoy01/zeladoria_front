import 'package:clean_flutter_template/shared/domain/entities/adress.dart';
import 'package:clean_flutter_template/shared/domain/entities/service.dart';
import 'package:clean_flutter_template/shared/domain/entities/subservice.dart';
import 'package:clean_flutter_template/shared/domain/enums/demand_status_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/service_type_enum.dart';
import 'package:clean_flutter_template/shared/domain/enums/subservice_type_enum.dart';
import 'package:clean_flutter_template/shared/infra/models/demand_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var demand = DemandModel(
    id: '0',
    demandStatus: DemandStatusEnum.IN_PROGRESS,
    description: 'description',
    service: Service(
      serviceType: ServiceTypeEnum.GREEN_AREA,
      subservice: Subservice(
        subserviceType: SubserviceTypeEnum.LANDSCAPE_AREAS,
        orientation: 'orientation',
        unit: 'unit',
        quantity: 1,
      ),
      technicalName: 'technicalName',
      popularName: 'popularName',
    ),
    adress: Adress(
      street: 'street',
      number: 123,
      complement: 'complement',
      district: 'district',
      city: 'city',
      state: 'state',
      cep: '',
      lat: 1.0,
      lng: 1.0,
    ),
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  test('[TEST] - demandModel copywith', () {
    expect(demand.copyWith(id: '1234').id, '1234');
    expect(
        demand
            .copyWith(
              adress: Adress(
                street: 'street 123',
                number: 123,
                complement: 'complement',
                district: 'district',
                city: 'city',
                state: 'state',
                cep: '',
                lat: 1.0,
                lng: 1.0,
              ),
            )
            .adress
            .street,
        'street 123');
    expect(demand.copyWith(description: 'description 123').description,
        'description 123');
    expect(
        demand.copyWith(demandStatus: DemandStatusEnum.COMPLETED).demandStatus,
        DemandStatusEnum.COMPLETED);
    expect(demand.copyWith(createdAt: DateTime.now()).createdAt,
        isNot(demand.createdAt));
    expect(demand.copyWith(updatedAt: DateTime.now()).updatedAt,
        isNot(demand.updatedAt));
    expect(
        demand
            .copyWith(
                service: Service(
              serviceType: ServiceTypeEnum.GREEN_AREA,
              subservice: Subservice(
                subserviceType: SubserviceTypeEnum.LANDSCAPE_AREAS,
                orientation: 'orientation',
                unit: 'unit',
                quantity: 1,
              ),
              technicalName: 'technicalName',
              popularName: '123',
            ))
            .service
            .popularName,
        '123');
  });
}
