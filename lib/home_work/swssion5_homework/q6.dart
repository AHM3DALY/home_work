/*Q6
Create a program that calculates the factorial of 6 and prints the result.
*/
void main() {
  int factorial = 1;
  int number = 6;
  int index = 1;
  while (index <= number) {
    factorial = factorial * index;
    index++;
  }
  print('The factorial of $number is : $factorial');
}
