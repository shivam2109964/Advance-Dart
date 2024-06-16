/// The clamp() method is a handy tool for keeping a number within a specified range.
/// It takes three arguments:
/// 1. The number you want to clamp (the input).
/// 2. The lower limit of the allowed range.
/// 3. The upper limit of the allowed range.

void main() {
  int myNumber = 10;
  int myNumber1 = -5;
  int myNumber2  = 50;

  int clamp1 = myNumber.clamp(0, 20);
  int clamp2 = myNumber1.clamp(0, 20);
  int clamp3 = myNumber2.clamp(0, 20);

  print(clamp1);
  print(clamp2);
  print(clamp3);

}
