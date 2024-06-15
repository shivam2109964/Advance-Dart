void main() {
  String name = "Shivam";
  int value = 19;
  double valuee = 19;
  bool isTrue = true;
  List value1 = [];
  Map data = {};
  Set data1 = {};
  Runes myRunes = Runes("Hello");
  Symbol mySymbol = Symbol(name);

  print(mySymbol);
}

int calculatingLength(String str) {
  int lenght = 0;
  for (int i = 0; i < str.length; i++) {
    lenght++;
  }
  return lenght;
}
