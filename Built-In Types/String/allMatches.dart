void main() {
  String text = 'Hello, Dart! Dart is awesome.';

  RegExp pattern = RegExp(r'Dart');

  Iterable<RegExpMatch> matchs = pattern.allMatches(text);

  for (RegExpMatch match in matchs) {
    int start = match.start;
    int end = match.end;
    String matchsText = text.substring(start, end);
    print("Found Match: $matchsText");
  }

  RegExp pat = RegExp(r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b');
String tx = 'Emails: alice@example.com, bob@gmail.com';
Iterable<RegExpMatch> mt = pat.allMatches(tx);

for (RegExpMatch mh in mt) {
  print('Found email: ${mh.group(0)}');
}

}
