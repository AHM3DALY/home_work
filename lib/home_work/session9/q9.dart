/*
9. Even, Odd, and Statistics - Ask the user to enter 10 numbers in a list. - Print how many are
even and how many are odd. - Calculate the total sum of all even numbers and all odd numbers
separately. - Finally, print which group (even or odd) has the larger sum.
*/
import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter 10 numbers:");
  for (int i = 0; i < 10; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int evenCount = 0;
  int oddCount = 0;
  int evenSum = 0;
  int oddSum = 0;
  for (var num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
      evenSum += num;
    } else {
      oddCount++;
      oddSum += num;
    }
  }
  print(evenCount);
  print(evenSum);
  print(oddCount);
  print(oddSum);
  if (evenSum > oddSum) {
    print('$evenSum has alarger sum');
  } else {
    print('$oddSum has a larger sum');
  }
}
