/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
 */

void main() {
  Map<String, String?> env = {'MODE': 'dev', 'HOST': null};

  print(env);
  if (env['MODE'] == null) {
    env['MODE'] = 'prod';
  }
  if (env['HOST'] == null) {
    env['HOST'] = 'localhost';
  }
  print(env);
  print(env.values?.toString().toUpperCase());

  if (env['MODE'] == 'prod') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
