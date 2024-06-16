/// isNaN stand for Not a number

void main() {
  int value = 12;

  double value1 = 0 / 0;
  int value2 = -12;

  print(value.isNaN);
  print(value1.isNaN);

  print(value.isNegative);
  print(value2.isNegative);

  print(value.sign);
  print(value1.sign);
  print(value2.sign);
}
