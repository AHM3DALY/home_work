/*
Q5 Create a class Course with attributes title and duration (default = 3 months). 
Create two courses: one with custom duration and one with the default. 
Print both.
*/

void main() {
  Course course1 = Course('Flutter Development', 6);
  Course course2 = Course('Dart Basics');

  print('Course 1: ${course1.title}, Duration: ${course1.duration} months');
  print('Course 2: ${course2.title}, Duration: ${course2.duration} months');
}

class Course {
  String title;
  int duration;

  Course(this.title, [this.duration = 3]);
}
