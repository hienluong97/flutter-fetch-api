import 'package:api_flutter/models/vehicel.dart';

class Bicycle extends Vehicel {
  static int maxSpeed = 30000;
  bool hasBasket;
  Bicycle({required name, required int year, required this.hasBasket})
      : super(name, year);

  bool equals(Object other) =>
      identical(this, other) ||
      (other is Bicycle &&
          name == other.name &&
          year == other.year &&
          hasBasket == other.hasBasket);

  @override
  String toString() {
    return '${super.toString()}, hasBasket=$hasBasket';
  }
}
