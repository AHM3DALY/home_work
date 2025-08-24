/*
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
 */
void main() {
  Map<String, int> tickets = {
    'User1': 19,
    'User2': 38,
    'User3': 49,
    'User4': 17,
    'User5': 13,
    'User6': 29,
  };
  bool heHasDad;
  heHasDad = false;
  String? area;
  area = 'restricted';

  if (tickets['User4']! < 18 && !heHasDad) {
    print('Access denied (under 18, no parent)');
    return; // نوقف البرنامج
  }

  switch (area!) {
    case 'general':
      print('Welcome to general area');
      break;
    case 'restricted':
      if (tickets['User4']! >= 18) {
        print(' Welcome to restricted area');
      } else {
        print('Access denied to restricted area');
      }

      break;
    default:
      print('Unknown area');
  }
}
