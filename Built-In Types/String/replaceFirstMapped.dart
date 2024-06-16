void main() {
  String text = 'Shivam';
  var newData = text.replaceAllMapped(RegExp(r'v'), (match) => 'U');
  print(newData);
}
