/*
Q4
Create a program with a map of student names to their marks. Print the name of the student with
the highest mark.

*/

/*
Q4
Create a program with a map of student names to their marks.
Print the name of the student with the highest mark.
*/

void main() {
  Map<String, int> studentMarks = {'ahmed': 125, 'mohamed': 510, 'ali': 174};

  String topStudent = '';
  int highestMark = 0;

  studentMarks.forEach((name, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      topStudent = name;
    }
  });

  print('The top student is $topStudent with $highestMark marks');
}
