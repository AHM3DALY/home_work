/*
Q2. Class with Method - Create a class Student with attributes name and marks. - Add a method
hasPassed() that returns true if marks >= 50, otherwise false. - In main(), create a student object
and print whether they passed
*/
void main() {
  Student ahmed = Student('ahmed', 65);
  if (ahmed.hasPassed()) {
    print('${ahmed.name} has passed');
  } else {
    print('${ahmed.name} has failed');
  }
}

class Student {
  String name;
  int mark;
  Student(this.name, this.mark);
  bool hasPassed() {
    return mark >= 50;
  }
}
