/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).

*/
/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
*/
import 'dart:math';

void main() {
  // create vehicles
  var car1 = Car(50, 15, 1.5);
  var truck1 = Truck(120, 5, 10);
  var car2 = Car(40, 18, 0.5);

  List<Vehicle> vehicles = [car1, truck1, car2];
  List<double> tripDistances = [120, 300, 450]; // multiple trips

  for (var vehicle in vehicles) {
    double totalFuel = 0;
    bool canDoAll = true;

    for (var distance in tripDistances) {
      double needed = vehicle.computeFuel(distance);
      totalFuel += needed;

      if (needed > vehicle.fuelCapacity) {
        canDoAll = false;
      }
    }

    print(
      "${vehicle.toString()} total fuel needed: ${totalFuel.toStringAsFixed(2)}L",
    );
    if (!canDoAll) {
      print(
        "⚠️ ${vehicle.toString()} cannot complete at least one trip with its tank capacity.",
      );
    }
  }
}

class Vehicle {
  double _fuelCapacity;
  double _fuelEfficiency;
  Vehicle(double fuelCapacity, double fuelEfficiency)
    : _fuelCapacity = (fuelCapacity > 0 ? fuelCapacity : 0),
      _fuelEfficiency = (fuelEfficiency > 0 ? fuelEfficiency : 0) {
    if (fuelCapacity <= 0 || fuelEfficiency <= 0) {
      print("Invalid values provided for Vehicle, using defaults (0).");
    }
  }

  double get fuelCapacity => _fuelCapacity;
  double get fuelEfficiency => _fuelEfficiency;

  // method to compute fuel needed for a trip
  double computeFuel(double distance) {
    return distance / _fuelEfficiency;
  }

  // check if can complete the trip
  bool canComplete(double distance) {
    return computeFuel(distance) <= _fuelCapacity;
  }

  @override
  String toString() {
    return "Generic Vehicle";
  }
}

// ---------------- Car ----------------
class Car extends Vehicle {
  double _acConsumption;

  Car(double fuelCapacity, double fuelEfficiency, double acConsumption)
    : _acConsumption = (acConsumption >= 0 ? acConsumption : 0),
      super(fuelCapacity, fuelEfficiency) {
    if (acConsumption < 0) {
      print("Invalid AC consumption for Car, using 0.");
    }
  }

  @override
  double computeFuel(double distance) {
    double baseFuel = super.computeFuel(distance);
    double extraFuel = (distance / 100.0) * _acConsumption;
    return baseFuel + extraFuel;
  }

  @override
  String toString() {
    return "Car";
  }
}

// ---------------- Truck ----------------
class Truck extends Vehicle {
  double _loadWeight;
  Truck(double fuelCapacity, double fuelEfficiency, double loadWeight)
    : _loadWeight = (loadWeight >= 0 ? loadWeight : 0),
      super(fuelCapacity, fuelEfficiency) {
    if (loadWeight < 0) {
      print("Invalid load weight for Truck, using 0.");
    }
  }

  @override
  double computeFuel(double distance) {
    double multiplier = 1 + (_loadWeight * 0.02);
    return super.computeFuel(distance) * multiplier;
  }

  @override
  String toString() {
    return "Truck";
  }
}
