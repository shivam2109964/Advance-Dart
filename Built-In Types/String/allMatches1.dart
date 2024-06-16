void main() {
  String text = 'sg2109964@gmail.com';
void main() {
  String text = 'Shivam!gupta@&*whatsuppp()';
  RegExp regExp = RegExp(r'[!@&*()]');

  Iterable<RegExpMatch> matches = regExp.allMatches(text);

  for (RegExpMatch match in matches) {
    int start = match.start;
    int end = match.end;
    String matchesFound = text.substring(start, end);
    print(matchesFound);
  }
}

  RegExp regExp = RegExp(r'\b[@.]');

  Iterable<RegExpMatch> matches = regExp.allMatches(text);

  for (RegExpMatch match in matches) {
    int start = match.start;
    int end = match.end;
    String matchText = text.substring(start, end);
    print(matchText);
  }
}
