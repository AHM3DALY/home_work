/*
Q2
Create a class Rectangle with private fields _width and _height.
- Public setters width and height:
If > 0 update, else print 'Invalid value for width/height'.
- Public getters width and height.
- Add a read-only computed getter area.
- In main(), demonstrate:
1. Creating a rectangle with valid values and printing width, height, and area.
2. Updating one side to a valid value and showing area changes.
3. Trying to set a negative value (should print 'Invalid value').
- Prove encapsulation: include a commented line rect._width = 0; to show it’s inaccessible.
*/

void main() {
  Rectangle rect = Rectangle();

  rect.width = 5;
  rect.height = 10;
  print('Width: ${rect.width}, Height: ${rect.height}, Area: ${rect.area}');

  rect.height = 20;
  print(
    'Updated -> Width: ${rect.width}, Height: ${rect.height}, Area: ${rect.area}',
  );

  rect.width = -3; // Invalid value for width

  // 4. Prove encapsulation
  // rect._width = 0; // direct access is not allowed
}

class Rectangle {
  double _width = 0;
  double _height = 0;

  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print('Invalid value for width');
    }
  }

  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print('Invalid value for height');
    }
  }

  double get width => _width;

  double get height => _height;

  double get area => _width * _height;
}
