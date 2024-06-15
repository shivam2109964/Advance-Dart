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

  //Que2 Result direct and manually
  var que2D = stringToHexaDirect(name);
  print(que2D);
  var que2M = stringToHexaManually(name);
  print(que2M);

  //Que3 Result direct
  var que3D = findRangeDirect(name);
  print(que3D);

  var que3Test = findRangeDirect("hsdlHSUkskI");
  print(que3Test);
  print("Totol Characters find is ${que3Test.length}");

  //Que4 Result direct and manually
  var que4D = sumOfAllUniCodeDirect(name);
  print(que4D);

  var que4M = sumOfAllUniCodeManually(name);
  print(que4M);

  //Que5 Result direct
  var que5D = encryptData(name);
  print(que5D);
  //Decrypted Data
  var decrypted = decryptData(que5D);
  print(decrypted);
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

///Que2. String to Hexadecimal Conversion
///Direct
List stringToHexaDirect(String str) {
  List<int> convertToCodeUnit = [];
  List convertToHexa = [];
  for (int i = 0; i <= str.length - 1; i++) {
    convertToCodeUnit.add(str.codeUnitAt(i));
  }

  for (int element in convertToCodeUnit) {
    var data = element.toRadixString(16);
    convertToHexa.add(data);
  }
  return convertToHexa;
}

/// Manually
List stringToHexaManually(String str) {
  List<int> convertToCodeUnit = [];
  List<String> hexValues = [];

  for (int i = 0; i <= str.length - 1; i++) {
    convertToCodeUnit.add(str.codeUnitAt(i));
  }
  for (int element in convertToCodeUnit) {
    hexValues.add(hexaOperation(element));
  }
  return hexValues;
}

String hexaOperation(int singleData) {
  const hexChars = "0123456789ABCDEF";
  String hexResult = "";

  do {
    int remainder = singleData % 16;
    hexResult = hexChars[remainder] + hexResult;
    singleData = singleData ~/ 16;
  } while (singleData > 0);
  return hexResult;
}

/// Que3. Count Characters with Specific Code Unit Range
/// Write a function that counts how many characters in a string have Unicode code units within
/// a specified range (e.g., betweeen 65 and 90 for Upper case letters )

List findRangeDirect(String str) {
  List<int> convertIntoCodeUnit = [];
  List findCharInRange = [];
  for (int i = 0; i <= str.length - 1; i++) {
    convertIntoCodeUnit.add(str.codeUnitAt(i));
  }
  for (int i = 0; i <= convertIntoCodeUnit.length - 1; i++) {
    if (convertIntoCodeUnit[i] >= 65 && convertIntoCodeUnit[i] <= 90) {
      findCharInRange.add(String.fromCharCode(convertIntoCodeUnit[i]));
    }
  }
  return findCharInRange;
}

/// Unicode Code Unit Sum
/// Develop a function that computers the sum of all Unicode units in a given string.
int sumOfAllUniCodeDirect(String str) {
  List<int> convertToUniCode = [];
  for (int i = 0; i <= str.length - 1; i++) {
    convertToUniCode.add(str.codeUnitAt(i));
  }
  return convertToUniCode.reduce((value, element) {
    return value + element;
  });
}

int sumOfAllUniCodeManually(String str) {
  List<int> convertToUniCode = [];
  int sum = 0;
  for (int i = 0; i <= str.length - 1; i++) {
    convertToUniCode.add(str.codeUnitAt(i));
  }

  for (int i = 0; i <= convertToUniCode.length - 1; i++) {
    sum += convertToUniCode[i];
  }
  return sum;
}

/// Que.5 String Encryption using Code Units
/// Implement a function that encrypts a string by shifting each characters's unicode code unit
/// by a certain number of position (Caesar cipher).

String encryptData(String str) {
  List<int> convertUniCode = [];
  List<int> encryptedData = [];
  List<String> newData = [];
  for (int i = 0; i <= str.length - 1; i++) {
    convertUniCode.add(str.codeUnitAt(i));
  }
  for (int element in convertUniCode) {
    int shiftPos = element += 5;
    encryptedData.add(shiftPos);
  }
  for (int element in encryptedData) {
    String rawData = String.fromCharCode(element);
    newData.add(rawData);
  }
  return newData.join();
}

///Now decrypt the encrypted data
String decryptData(String str) {
  List<int> convertUniCode = [];
  List<int> shiftBackData = [];
  List<String> orignalData = [];

  for (int i = 0; i <= str.length - 1; i++) {
    convertUniCode.add(str.codeUnitAt(i));
  }

  for (int element in convertUniCode) {
    int shiftPosBack = element -= 5;
    shiftBackData.add(shiftPosBack);
  }

  for (int element in shiftBackData) {
    String origData = String.fromCharCode(element);
    orignalData.add(origData);
  }

  return orignalData.join();
}
