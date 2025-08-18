/*
Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/
///////////////////////
void main() {
  String country = 'egypt';
  int year = 2025;
  double weight = 90.50;
  bool likecoding = true;
  print(
    'i live in $country, $year, my weight is $weight ,and i like coding $likecoding',
  );
  weight = 91.5;
  print('weight update $weight');
}
