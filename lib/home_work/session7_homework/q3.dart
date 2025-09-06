/*
Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has.

*/
import 'dart:io';

void main() {
  print('ENTER THE WORD');
  String word = (stdin.readLineSync()!);
  String reversed = word.split('').reversed.join();
  int vowelscount = 0;
  String vowels = 'aeiouAEIOU';
  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelscount++;
    }
  }
  print(reversed);
  print(vowelscount);
}
