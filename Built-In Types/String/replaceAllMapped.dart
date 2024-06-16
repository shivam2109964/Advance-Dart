/// In Dart, the `replaceAllMapped()` method is used to replace occurrences of a substring
/// within a string, using a custom function to transform each matched substring.
/// This method provides a flexible way to perform advanced string manipulation based on patterns
/// found in the original string.

void main() {
  String text = 'Hello, world!';
  String replaceText = text.replaceAllMapped(RegExp(r'world'), (match) {
    return "ji";
  });
  print(replaceText);
}
