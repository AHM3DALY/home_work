/*

Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.

 */

void main() {
  double? mark;
  String grade;
  mark = 78;
  if (mark! > 100 || mark < 0) {
    grade = 'Invalid mark';
  } else if (mark! >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else if (mark >= 50) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  print('Grade: $grade');
}
