/*
Q8 Ask the user to input a sentence. 
Print all the words that appear only once in the sentence. 
Also print the total count of unique words.
*/

import 'dart:io';

void main() {
  print('Enter a sentence:');
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(' ');

  Map<String, int> wordCount = {};

  for (var word in words) {
    word = word.toLowerCase();
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  print('\nWords that appear only once:');
  for (var entry in wordCount.entries) {
    if (entry.value == 1) {
      print(entry.key);
    }
  }

  print('\nTotal unique words: ${wordCount.keys.length}');
}
