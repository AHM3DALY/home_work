/*

Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than once.
 */
void main() {
  List<String> names = ['ahmed', 'Ali', 'Sami', 'Ali', 'hossam'];
  Set<String> namesUnique = names.toSet();
  Map<String, int> countsOfName = {'hossam': 2, 'Sami': 1, 'Ali': 2};
  bool namesHigher = names.length > namesUnique.length;
  print(namesHigher);
  if (countsOfName['hossam']! > 1) {
    print('hossam is duplicated');
  } else {
    print('hossam is not duplicated');
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
