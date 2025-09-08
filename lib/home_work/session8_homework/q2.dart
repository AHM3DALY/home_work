/*
Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details
*/
void main() {
  Car Car1 = Car('BMW', 1945);
  Car Car2 = Car('ferarri', 1994);
  print(Car1.brand);
  print(Car1.year);

  print(Car2.brand);
  print(Car2.year);
}

class Car {
  String brand;
  int year;
  Car(this.brand, this.year);
}
