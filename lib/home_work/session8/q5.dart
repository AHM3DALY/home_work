/*
Q5. Objects & Access Attributes - Create a class Person with attributes firstName and lastName. -
Create an object from the class, assign values to its attributes, and print them.
*/

void main() {
  Person ahmed = Person();
  ahmed.FristName = 'ahmed';
  print(ahmed.FristName);
  ahmed.LastName = 'ali';
  print(ahmed.LastName);
}

class Person {
  String? FristName;
  String? LastName;
}
