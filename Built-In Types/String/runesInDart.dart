/// Runes represent the sequence of Unicode code points.
/// Unicode defines a unique numeric value for every character across different
/// writing systems and languages.
/// This includes not only letters and digits but also symbols, emojis, and special characters.

void main() {
  Runes runes = Runes('\u{1F60A}');
  print(String.fromCharCodes(runes));
}
