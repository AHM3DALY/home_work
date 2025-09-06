/*
Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  print('ENTER FRIST NUMBER ');
  int num1 = int.parse(stdin.readLineSync()!);

  print('ENTER SECUNED NUMBER ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('ENTER THIRD NUMBER ');
  int num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  double average = sum / 3;
  print(sum);
  print(average);
  if (average > 50) {
    print('THE AVERAGE GREATER THAN 50');
  } else {
    print('THE AVERAGE LOWER THAN 50');
  }
}
