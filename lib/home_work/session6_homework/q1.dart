/*
Create a program that declares an integer for birthYear and calculates the age assuming the
current year is 2025. Print 'You are X years old'.

*/
void main() {
  int birthYear = 1995;
  int age = theAge(birthYear);
  print('you are $age years old');
}

int theAge(int year) {
  int currentYear = 2025;
  return currentYear - year;
}
