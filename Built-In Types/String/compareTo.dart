/// In Dart, the `string` class provides the `compareTo` method, which is used to compare
/// one string with another.
/// This method is useful for sorting and ordering strings based in their lexicographical (dictionary) order.

void main() {
  String str = 'SHIVAM';
  String str1 = 'GUPTA';
  List<String> list = [
    'computer',
    'laptop',
    'mobile',
    'camera',
    'desktop',
    'drone'
  ];
  String sortedUsingComp = sortUsingCompare(str);
  print(sortedUsingComp);

  String lexicoGraphical = intCompareTo(str, str1);
  print(lexicoGraphical);

  List<String> sortedList = sortUsingComp(list);
  print("Original list $list");
  print("SortedList $sortedList");
}

//Practice
String intCompareTo(String str, String str1) {
  int compareData = str.compareTo(str1);

  if (compareData > 0) {
    return '$str1 comes before $str';
  } else if (compareData < 0) {
    return '$str1 comes after $str';
  } else {
    return '$str1 is equal to $str';
  }
}

/// Que1. String Sorting
/// Write a Dart program that takes a list of string and sorts them in alphabetical order using
/// the compareTo() method. Print the sorted list.

String sortUsingCompare(String str) {
  List<String> sortedData = [];
  for (int i = 0; i <= str.length - 1; i++) {
    sortedData.add(str[i]);
  }
  sortedData.sort((element, element1) => element.compareTo(element1));
  return sortedData.join();
}

//Sort a list
List<String> sortUsingComp(List<String> list) {
 List<String> sortedList = List.from(list);
 sortedList.sort((element, element1) => element.compareTo(element1));
 return sortedList;
}
