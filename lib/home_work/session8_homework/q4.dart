/*
Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
Give price a default value of 0. - Create two objects: one with a custom price and one with the
default price. Print their details.
*/
void main() {
  Product item1 = Product('mobile', 1000);
  print(item1.name);
  print(item1.price);
  Product item2 = Product('laptop');
  print(item2.name);
  print(item2.price);
}

class Product {
  String name;
  int price = 0;
  Product(this.name, [this.price = 0]);
}
