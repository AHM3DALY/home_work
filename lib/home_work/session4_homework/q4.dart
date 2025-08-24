/**
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
 */

// void main() {
//   Map<String, dynamic?> personalDetail = {
//     'Name': "Hazem",
//     'Age': 27,
//     'Phone': null,
//   };

//   if (personalDetail['Phone'] == null) {
//     print('Please enter your phone number');
//   }
//   personalDetail['Phone'] = '1234567890';
//   print("${personalDetail['Phone']}");
//   print(personalDetail['Phone'].length);
// }

void main() {
  Map<String, dynamic> personalDetail = {
    'Name': 'Hazem',
    'Age': 27,
    'Phone': null,
  };
  if (personalDetail['Phone'] == null) {
    print('Please enter your phone number');
  }
  personalDetail['Phone'] = 012345;
  print(personalDetail['Phone']);
  personalDetail['Phone'] = personalDetail['Phone'].toString();
  print(personalDetail['Phone'].length);
}
