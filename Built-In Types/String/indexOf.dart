/// In Dart, `String` class provides the `indexOf` method,
/// which is used to find the index of the first occurrence of a substring or a character within a string.
/// This method is useful for locationg where a specific sequence of characters
/// begins within a string.

void main() {
  String text = 'Shivam';
  String text1 = "sg2109964@gmail.com";

  var data = text.indexOf("m");
  print(data);

  RegExp regExp = RegExp(r'[@]');
  var data1 = text1.indexOf(regExp);
  print(data1);
}
