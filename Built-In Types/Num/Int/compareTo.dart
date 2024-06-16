void main() {
  int num1 = 5;
  int num2 = 8;
  int num3 = 5;

  int result1 = num1.compareTo(num2); // result1 will be negative (e.g., -3)
  int result2 = num2.compareTo(num1); // result2 will be positive (e.g., 3)
  int result3 = num1.compareTo(num3); // result3 will be zero

  print('''
  $result1,
  $result2,
  $result3
''');
}
