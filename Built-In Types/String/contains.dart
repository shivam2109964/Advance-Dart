/// In Dart, the `String` class provides the `contains` method,
/// which is used to check if a string contains a specific substring or pattern.
/// This method can be very useful for searching withing string to determine if a certain sequence of
/// characters or a regular expression pattern exits.
/// contains return type is bool

void main() {
  String text = "Shivam @gupta";
  RegExp regExp = RegExp(r'[@]');
  var show = text.contains(regExp);
  print(show);
}
