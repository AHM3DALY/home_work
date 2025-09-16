/*
Q1
Create a class Temperature with a private field _celsius.
- Provide a setter celsius that checks if the input is in the range -100..100.
If valid → update _celsius, else print 'Invalid temperature'.
- Provide a getter celsius.
- Add a read-only computed getter fahrenheit that converts from _celsius.
- In main(), demonstrate:
1. Setting a valid value and printing both celsius and fahrenheit.
2. Trying to set an invalid value (should print 'Invalid temperature').
- Prove encapsulation: include a commented line temp._celsius = 999; showing direct access is not
allowed
*/
void main() {
  Temperature temp = Temperature();
  temp.celsius = 50;
  print('celsius:${temp.celsius}');
  print('fahrenheit:${temp.fahrenheit}');
  temp.celsius = 150; //invalid temp
  //Prove encapsulation:
  // temp._celsius = 999; // direct access is not allowed
}

class Temperature {
  int _celsius = 0;
  set celsius(int value) {
    if (value >= -100 && value <= 100) {
      _celsius = value;
    } else {
      print('Invalid temperature');
    }
  }

  int get celsius => _celsius;
  double get fahrenheit => (_celsius * 9 / 5) + 32;
}
