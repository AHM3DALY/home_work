/*
Question 10
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.

*/
void main() {
  Map<String, String> countrycodes = {
    'EG': 'EGYPT',
    'LYB': 'LYBIA',
    'USA': 'AMRECA',
  };
  print(countrycodes['EG']);
  countrycodes.addAll({'QA': 'QATER'});
  print(countrycodes.length);
  if (countrycodes.containsKey('JO')) {
    print('JO exists:${countrycodes['JO']}');
  } else {
    print('Jordan missing');
  }
}
