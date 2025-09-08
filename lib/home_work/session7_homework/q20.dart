void main() {
  human ahmed = human();
  ahmed.hairColor = 'red';
  print(ahmed.hairColor);
  print(ahmed.numbersofarmes);
  human walaa = human();
  walaa.hight = 150;
  print(walaa.hight);
}

class human {
  String? hairColor;
  int? numbersofarmes = 2;
  double? hight;
  double? wight;
}
