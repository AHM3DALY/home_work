/*
Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them.
*/
import 'dart:io';

void main() {
  print('ENTER THE FIRST NUMBER');
  int n1 = int.parse(stdin.readLineSync()!);
  print('ENTER THE SECAND NUMBER');
  int n2 = int.parse(stdin.readLineSync()!);
  print('ENTER THE THIRD NUMBER');
  int n3 = int.parse(stdin.readLineSync()!);
  print('ENTER THE FORTH NUMBER');
  int n4 = int.parse(stdin.readLineSync()!);
  print('ENTER THE FIFTH NUMBER');
  int n5 = int.parse(stdin.readLineSync()!);
  List<int> numbers = [n1, n2, n3, n4, n5];
  int largest = numbers[0];
  int smallest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  int difference = largest - smallest;
  print('the largest number is $largest');
  print('the smallest number is $smallest');
  print('the difference $difference');
}
