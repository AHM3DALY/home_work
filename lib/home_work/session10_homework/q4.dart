/*
Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
*/
class Product {
  String _name = '';
  double _price = 0;

  // Constructor (اختياري)
  Product(this._name, this._price) {
    if (_name.isEmpty) {
      print('Invalid name');
      _name = 'Unknown';
    }
    if (_price < 0) {
      print('Invalid price');
      _price = 0;
    }
  }

  // Setter للاسم
  set name(String value) {
    if (value.isEmpty) {
      print('Invalid name');
    } else {
      _name = value;
    }
  }

  // Setter للسعر
  set price(double value) {
    if (value < 0) {
      print('Invalid price');
    } else {
      _price = value;
    }
  }

  // Getter
  String get name => _name;
  double get price => _price;

  // Getter محسوب للخصم 10%
  double get discountedPrice => _price * 0.9;
}

void main() {
  Product p = Product('Laptop', 1000);

  print('Product: ${p.name}');
  print('Original Price: ${p.price}');
  print('Discounted Price: ${p.discountedPrice}');

  // تعديل القيم
  p.price = -500; // invalid
  p.name = ''; // invalid

  p.price = 800; // valid update
  print('\nUpdated Price: ${p.price}');
  print('Updated Discounted Price: ${p.discountedPrice}');
}
