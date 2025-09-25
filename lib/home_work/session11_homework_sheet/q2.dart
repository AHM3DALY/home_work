/*
Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.

*/
import 'dart:math';

void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(4),
    Triangle(8, 6),
    Rectangle(-3, 4),
    Circle(0),
  ];

  double totalArea = 0.0;
  for (var s in shapes) {
    totalArea += s.area();
  }

  double totalCost = computeCost(totalArea);

  print("Total paintable area = ${totalArea.toStringAsFixed(2)}");
  print("Total painting cost = ${totalCost.toStringAsFixed(2)}");
}

class Shape {
  double area() {
    return 0.0;
  }
}

// ----------------- المستطيل Rectangle -----------------
class Rectangle extends Shape {
  double _width;
  double _height;

  Rectangle(double width, double height) : _width = 1.0, _height = 1.0 {
    if (width > 0) {
      _width = width;
    } else {
      print("Invalid width ($width) — keeping default 1.0");
    }

    if (height > 0) {
      _height = height;
    } else {
      print("Invalid height ($height) — keeping default 1.0");
    }
  }

  @override
  double area() => _width * _height;
}

// ----------------- الدائرة Circle -----------------
class Circle extends Shape {
  double _radius;

  Circle(double radius) : _radius = 1.0 {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Invalid radius ($radius) — keeping default 1.0");
    }
  }

  @override
  double area() => pi * _radius * _radius;
}

// ----------------- المثلث Triangle -----------------
class Triangle extends Shape {
  double _base;
  double _height;

  Triangle(double base, double height) : _base = 1.0, _height = 1.0 {
    if (base > 0) {
      _base = base;
    } else {
      print("Invalid base ($base) — keeping default 1.0");
    }

    if (height > 0) {
      _height = height;
    } else {
      print("Invalid height ($height) — keeping default 1.0");
    }
  }

  @override
  double area() => 0.5 * _base * _height;
}

// ----------------- حساب التكلفة  Tiered Pricing -----------------
double computeCost(double totalArea) {
  double cost = 0.0;
  double remaining = totalArea;

  // أول 50 وحدة بسعر 1.50
  double tier1 = min(remaining, 50);
  cost += tier1 * 1.50;
  remaining -= tier1;

  // الـ 100 التالية بسعر 1.25
  double tier2 = min(remaining, 100);
  cost += tier2 * 1.25;
  remaining -= tier2;

  // أي وحدات زيادة بسعر 1.00
  if (remaining > 0) {
    cost += remaining * 1.00;
  }

  return cost;
}
