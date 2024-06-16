/// In Dart, the lastIndexOf methos is similar to indexOf, but it searches for the last
/// occurrence of a substring or character within a strng, rather then the first occurrence.
/// This method is useful when you need to find the postion of the last occurrence of a speicific substring or
/// character in a string.
void main() {
  String text = 'Dart is fun, Dart is easy!';
  int index = text.lastIndexOf("a");
  print(index);
  print(text.length);
}
