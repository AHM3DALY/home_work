/*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
 */
void main() {
  double price = 7000;
  bool? isStudent;
  bool? hasCoupon;
  double finalPrice;
  isStudent = true;
  hasCoupon = false;
  if (isStudent!) {
    finalPrice = (price - (price * 0.1));
  } else if (hasCoupon!) {
    finalPrice = (price - (price * 0.2));
  } else if (price > 3500) {
    finalPrice = (price - (price * 0.05));
  } else {
    finalPrice = price;
  }

  print("Final price: $finalPrice");
}
