/*
Q6. Method Returning a Value - Create a class Rectangle with attributes width and height. - Add a
method perimeter() that returns the perimeter. - In main(), create a rectangle and print its perimeter.
*/

void main() {
  Rectangle rectangle = Rectangle(25, 30);
  print(rectangle.perimeter());
}

class Rectangle {
  int width;
  int height;
  Rectangle(this.width, this.height);
  int perimeter() {
    return 2 * (width + height);
  }
}
