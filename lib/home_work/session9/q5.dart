/*
Q5. Constructor with Default Value - Create a class Person with attributes name and age (default =
18). - Create one person by setting both values and another using only the name. - Print both
details.
*/
void main() {
  Person person1 = Person('ahmed', 30);
  Person person2 = Person('ali');
  print('${person1.name}-${person1.age}');
  print('${person2.name}-${person2.age}');
}

class Person {
  String name;
  int age;
  Person(this.name, [this.age = 18]);
}
