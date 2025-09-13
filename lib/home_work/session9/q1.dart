/*
Q1. Class with Constructor & Print - Create a class Animal with attributes type and sound. - Add a
constructor to set the values. - In main(), create two animals (e.g., Dog, Cat) and print their sounds
*/
void main() {
  Animal Dog = Animal('hard', 'strong');
  print(Dog.sound);
  Animal cat = Animal('domestic', 'low');
  print(cat.sound);
}

class Animal {
  String type;
  String sound;
  Animal(this.type, this.sound);
}
