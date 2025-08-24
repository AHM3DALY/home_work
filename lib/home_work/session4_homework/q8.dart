/*

Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions. */

void main() {
  int num1 = 75;
  int num2 = 85;
  int num3 = 54;
  bool isNum3smallerNum2 = num3 < num2;
  bool isNum2HigherNum1 = num2 > num1;
  bool isNum1HigherNum2 = num1 > num2;

  print(isNum3smallerNum2);
  print(isNum1HigherNum2);
  print(isNum2HigherNum1);
  if (isNum1HigherNum2 == true) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
