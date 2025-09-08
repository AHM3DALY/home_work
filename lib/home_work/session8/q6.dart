/*
Q6. Missing Number in a Sequence - Ask the user to enter 5 numbers in a list (numbers between 1
and 10). - Check if there is any number missing from the sequence 1–10, and print the missing
ones

*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Enter 5 numbers between 1 and 10:');
  for (int i = 0; i < 5; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  List<int> fullSequence = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> missing = [];
  for (int n in fullSequence) {
    if (!numbers.contains(n)) {
      missing.add(n);
    }
  }
  if (missing.isEmpty) {
    print('no missing number');
  } else {
    print(missing);
  }
}
