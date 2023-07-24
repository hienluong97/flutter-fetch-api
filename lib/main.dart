import 'package:api_flutter/repositories/movie_repository.dart';

import 'function.dart';
import 'models/bicycle.dart';
import 'models/car.dart';
import 'models/vehicel.dart';

// void main() {
//   runApp(const MyApp());
// }

void main(List<String> argument) {
  var firstname = 'Nguyen';
  String lastname = 'Luong';
  print('$firstname - $lastname');

  int result = add(5, 3);

  // In ra kết quả
  print(result); // Kết quả sẽ là 8

  double muliply_result = muliply(x: 3);
  print(muliply_result);

  sayHello('lan');

  getUrl('SERVER', port: 8000);
  getUrl2('SERVER', port: 4000);

  print(GetDateTimeString(year: 2023, month: 11, day: 03));

  doSomething(
      para1: 1,
      para2: 2,
      completion: (int result) {
        print('the result is $result');
      });

  List<String> carBrands = ['BMW', 'AUDI', 'MEC', 'ABC'];

  Vehicel vehicel = Vehicel('honda', 2000);

  print(vehicel);

  Car car = Car('suzuki', 2000, 0.2, 0.3);
  car.name = 'janus';
  print(car);
  print(car.age);
  car.age = 18;
  print(car.year);

  Bicycle bicycleOne = Bicycle(name: 'xedap1', year: 2000, hasBasket: true);
  print(bicycleOne);

  Bicycle bicycleTwo = Bicycle(name: 'xedap1', year: 2000, hasBasket: true);
  print(bicycleTwo);

  if (bicycleOne.equals(bicycleTwo)) {
    print('bang');
  }

  print(Bicycle.maxSpeed);

  List<Car> cars = [
    Car('BMV', 2000, 100, 200),
    Car('MAZDA', 2007, 111, 200),
    Car('NISAN', 2015, 102, 200),
    Car('LUXUS', 2023, 100, 300),
  ];

  print('cars: $cars');

  List<Car> fillterCar = cars
      .where((element) => element.year >= 2000 && element.year < 2022)
      .toList();

  print('fillterCar: $fillterCar');

  fetchMoviesData();
}
