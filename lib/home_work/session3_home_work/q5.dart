/*
Exercise 5:
5. a) Declare two integers a and b.
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b.
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result.
*/
void main() {
  int a = 10;
  int b = 50;
  bool isaequalb = a == b;
  print(isaequalb);
  bool isanotequalb = a != b;
  print(isanotequalb);
  bool isahigherthanb = a > b;
  print(isahigherthanb);
  bool isalowerthanb = a < b;
  print(isalowerthanb);
  bool isahigherthanorequalb = a >= b;
  print(isahigherthanorequalb);
  bool isalowerthanorequalb = a <= b;
  print(isalowerthanorequalb);
  int sum = a + b;
  bool issumequal20 = sum == 20;
  print(issumequal20);
}
