class Adress {
  final String street;
  final String cep;
  final int number;
  final String? complement;
  final String district;
  final String city;
  final String state;
  final double lat;
  final double lng;

  Adress({
    required this.street,
    required this.cep,
    required this.number,
    this.complement,
    required this.district,
    required this.city,
    required this.state,
    required this.lat,
    required this.lng,
  });
}
