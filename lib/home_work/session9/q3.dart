/*
Q3. Multiple Objects in a List - Create a class Car with attributes brand and year. - In main(), create
a list of 3 car objects. - Print only the cars made after 2015.
*/

void main() {
  List<Car> cars = [Car('bmw', 1998), Car('toyota', 2017), Car('ferari', 2018)];
  for (var Car in cars) {
    if (Car.year > 2015) {
      print("${Car.brand} -${Car.year}");
    }
  }
}

class Car {
  String brand;
  int year;
  Car(this.brand, this.year);
}
