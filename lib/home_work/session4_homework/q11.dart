/*

Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than once.
 */
void main() {
  List<String> names = ['Hazem', 'Ali', 'Sami', 'Ali', 'Hazem'];
  Set<String> namesUnique = names.toSet();
  Map<String, int> countsOfName = {'Hazem': 2, 'Sami': 1, 'Ali': 2};
  bool namesHigher = names.length > namesUnique.length;
  print(namesHigher);
  if (countsOfName['Hazem']! > 1) {
    print('Hazem is duplicated');
  } else {
    print('Hazem is not duplicated');
  }
  ;
  if (countsOfName['Sami']! > 1) {
    print('Sami is duplicated');
  } else {
    print('Sami is not duplicated');
  }
  ;

  if (countsOfName['Ali']! > 1) {
    print('Ali is duplicated');
  } else {
    print('Ali is not duplicated');
  }
  ;
}
