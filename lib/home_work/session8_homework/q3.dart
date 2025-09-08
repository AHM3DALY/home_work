/*
Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
set its initial values using a constructor. - Then change the age of the object and print the updated
details.
*/

void main() {
  Person ahmed = Person('ahmed', 30);
  ahmed.age = 31;
  print(ahmed.age);
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}
