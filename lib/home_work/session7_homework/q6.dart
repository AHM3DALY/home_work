/*
Q6. Number Guessing (3 Tries)
- Generate a random number between 1 and 20.
- Let the user guess up to 3 times.
- If they fail, reveal the correct number.
*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int secret = random.nextInt(20) + 1;
  int tries = 3;

  print('Guess the number between 1 and 20. You have 3 tries!');

  for (int i = 1; i <= tries; i++) {
    stdout.write('Try $i: ');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secret) {
      print('🎉 Correct! You guessed the number.');
      return;
    } else if (guess < secret) {
      print('Too low!');
    } else {
      print('Too high!');
    }
  }

  print('❌ You failed! The correct number was $secret');
}
