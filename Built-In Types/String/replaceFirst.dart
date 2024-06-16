void main() {
  String text = 'Shivam';
  var newData = text.replaceFirst(RegExp(r'[i]'), "a");
  print(newData);
}
