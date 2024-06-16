void main() {
  int number = 13;
  int number1 = 12;
  List<int> evenNum = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List<int> temp = [];

  for (int element in evenNum) {
    if (element.isEven) {
      temp.add(element);
    }
  }

  print(number.isEven);
  print(number1.isEven);
  print("List of original number ---> $evenNum");
  print("List of only even number ---> $temp");
}
