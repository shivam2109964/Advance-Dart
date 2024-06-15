void main() {
  String name = 'Shivam';

  /// Direct Methods
  /// In Dart codeUnits is not a method but a getter.
  /// Getter in Dart are similar to methods but are accessed like properties without prentheses.
  var directCodeUnit = name.codeUnits;
  print(directCodeUnit);

  ///Manually
  var manuallyCodeUnit = generateCodeUnit(name);
  print(manuallyCodeUnit);

  //Que1 Result direct and manually
  var que1D = directMethodRevString(manuallyCodeUnit);
  print(que1D);
  var que1M = manuallyMethRevStr(manuallyCodeUnit);
  print(que1M);
}

List<int> generateCodeUnit(String str) {
  List<int> convertedCodeUnit = [];
  for (int i = 0; i <= str.length - 1; i++) {
    convertedCodeUnit.add(str.codeUnits[i]);
  }
  return convertedCodeUnit;
}

/// Top 10 Questions
/// Que1. Reverse the String by using CodeUnits
String? directMethodRevString(List<int> codeUnits) {
  List<String?> data = [];

  for (int i = 0; i <= codeUnits.length - 1; i++) {
    data.add(String.fromCharCode(codeUnits[i]));
  }
  return data.reversed.join();
}

String? manuallyMethRevStr(List<int> codeUnits) {
  List<String?> data = [];

  for (int i = 0; i <= codeUnits.length - 1; i++) {
    data.add(String.fromCharCode(codeUnits[i]));
  }

  //reverse the data
  for (int i = 0; i <= data.length - 1; i++) {
    for (int j = 0; j < data.length - 1 - i; j++) {
      String temp = data[j]!;
      data[j] = data[j + 1];
      data[j + 1] = temp;
    }
  }
  return data.join();
}
