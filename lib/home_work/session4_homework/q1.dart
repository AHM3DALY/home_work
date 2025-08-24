/*
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/
void main() {
  List<int> nubers = [1, 2, 2, 3, 4, 4, 6];
  Set<int> uniqueNumbers = nubers.toSet();
  if (uniqueNumbers.length < nubers.length) {
    print('Duplicates were removed!');
  } else {
    print('No duplicates found');
  }
  print(nubers.length);
  print(uniqueNumbers.length);
  print(uniqueNumbers);
}
