/*
Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.
*/
void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'ahmed', 'grade': 100},
    {'name': 'ali', 'grade': 75},
  ];
  print(students[1]['grade']);
  int grade1 = students[0]['grade'];
  int grade2 = students[1]['grade'];
  double average = (grade1 + grade2) / 2;
  print(average);
}
