/*
Q3
Create a class Person with private fields _firstName and _lastName.
- Add setters for both fields that reject empty strings (print 'Invalid name' if empty).
- Add getters for both fields.
- Add a computed getter fullName that returns 'firstName lastName'.
- In main(), demonstrate:
1. Creating a person with valid names and printing fullName.
2. Trying to set an empty string for firstName or lastName (should print 'Invalid name').
*/

void main() {}

class Person {
  String _firstName = '';
  String _lastName = '';
  set firstName(String value) {
    if (value.isNotEmpty) {
      _firstName = value;
    } else {
      print('Invalid name');
    }
  }
  set _lastName(String value){
    if(value.isNotEmpty){
      _lastName=value
    }
    else{
      print('Invalid name');
    }
  }
  String

}
