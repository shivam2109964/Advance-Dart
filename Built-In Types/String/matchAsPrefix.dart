/// In Dart, the `String` class provides the `matchAsPrefix` method,
/// which is used to find and retrieve parts of a string that match a specified regular expression
/// pattern at the beginning (prefix) of the string.
/// Pattern: The regular expression pattern or string to match at the beginning of the string.

void main() {
  String text = 'Hello World';
  Pattern pattern = 'Hello';

  // ignore: unused_local_variable
  Match? match = pattern.matchAsPrefix(text);

  
}
