/*
Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.
*/
void main() {
  City cairo = City('cairo', 500000);
  print('city 1  name ${cairo.name}');
  print('city 1 population ${cairo.population}');
  City sohag = City('sohag', 300000);
  print('city 2  name ${sohag.name}');
  print('city 2 population ${sohag.population}');
}

class City {
  String name;
  int population;
  City(this.name, this.population);
}
