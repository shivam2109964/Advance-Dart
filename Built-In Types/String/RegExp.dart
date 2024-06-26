/// In Dart, regular expression [RegExp] are used for pattern matching and text searching/manipulation.
/// Components Breakdown:
/// RegExp Class:
/// The RegExp class in Dart represents a regular expression.
/// It's used to match strings against a pattern
/// RawString(`r'....'`)
/// The `r` prefix indicates a raw string in Dart.
/// A raw string treats backslashes(`\`) as literal characters and not as escape sequences.
/// For example, `r'n'` represent the two characters `\` and `n`, whereas `'\n'` represent a newline.
/// `b`Word Boundary
/// In regular expression `\b` denotes a word boundary.
/// It asserts a position between a word character like (`a-z`, `A-Z`, `0-9`).
/// This means that `\b` will match position where a word starts or ends.
/// The square bracket [] define a characters set.
/// ^
/// In the regular expression ^ symbol is called a "caret" or "hat"
/// and is has a special meaning in the context of regular expressions.
/// When ^ is used at the beginning of a regular expression pattern (like `^Hello`),
/// it anchors the match to the beginning of the sting.
/// This means that the pattern `Hello` much appear right at the strat of the string for the match to succeed.

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

  RegExp regExp1 = RegExp(r'^Shivam');

  var isTureOrNot = text.contains(regExp1);
  print(isTureOrNot);

}
