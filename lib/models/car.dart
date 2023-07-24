import 'package:api_flutter/models/vehicel.dart';

class Car extends Vehicel {
  double engineSize = 0;
  double horsePower = 0;
  Car(String name, int year, this.engineSize, this.horsePower)
      : super(name, year);

  int get age => DateTime.now().year - year;

  set age(int value) {
    year = DateTime.now().year - value;
  }

  @override
  String toString() => '${super.toString()} - $engineSize - $horsePower';
}
