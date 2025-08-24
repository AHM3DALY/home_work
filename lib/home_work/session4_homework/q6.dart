/*

Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
 */

void main() {
  List<int?> scores = [];
  if (scores == null || scores.isEmpty) {
    print('No Scores');
  }
  scores.addAll([25, 28, 7, 23, 13]);
  print(scores);
  int? sum = scores.first! + scores.last!;
  print(sum);
  print(sum >= 40);
}
