/*
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list
*/
import 'dart:io';

void main() {
  // طلب إدخال قائمة أعداد صحيحة من المستخدم
  print('Enter integers separated by spaces:');
  List<int> numbers = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  // أكبر وأصغر عدد والفرق بينهم
  int maxNum = numbers.reduce((a, b) => a > b ? a : b);
  int minNum = numbers.reduce((a, b) => a < b ? a : b);
  int difference = maxNum - minNum;

  print('Largest number: $maxNum');
  print('Smallest number: $minNum');
  print('Difference: $difference');

  // المتوسط
  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print('Average: $average');

  // الأعداد الأكبر من المتوسط
  print('Numbers above average:');
  for (var n in numbers) {
    if (n > average) {
      print(n);
    }
  }

  // حساب الأعداد الزوجية والفردية
  int evenCount = numbers.where((n) => n % 2 == 0).length;
  int oddCount = numbers.length - evenCount;

  print('Even numbers count: $evenCount');
  print('Odd numbers count: $oddCount');
}
