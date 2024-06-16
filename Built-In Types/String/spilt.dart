void main() {
  String text = "Shivam";
  var newData = text.split("");
  print(newData);

  var newData1 = text.split(RegExp(r'i'));
  print(newData1);
}
