/*
Q8. Longest and Shortest Word - Ask the user to input a sentence. - Print the longest word and the
shortest word in the sentence. - Also print their lengths.
*/
import 'dart:io';

void main() {
  print('enter sentence');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split('');
  String longest = words[0];
  String shortest = words[0];
  for (var word in words) {
    if (word.length > longest.length) {
      longest = word;
    }
    if (word.length < shortest.length) {
      shortest = word;
    }
  }
}
