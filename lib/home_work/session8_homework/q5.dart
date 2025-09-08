/*
Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list)
*/
import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter 6 numbers:");
  for (int i = 0; i < 6; i++) {
    stdout.write("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int largest = numbers[0];
  int secondLargest = -999999999;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }

  print("Largest number: $largest");
  print("Second largest number: $secondLargest");
}
