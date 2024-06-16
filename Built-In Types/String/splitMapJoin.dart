void main() {
  String text = "Shivam";
  var newData = text.splitMapJoin('i',
      onMatch: (match) => 'a', onNonMatch: (onNonMatch) => onNonMatch);
  print(newData);
}
