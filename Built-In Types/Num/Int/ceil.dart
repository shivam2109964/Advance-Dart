/// In Dart, the ceil() method is not directly assicuated with the int type.
/// It is method available on the num type, which is the superclass of both int and doule.
/// The ceil() method returns the smallest integer greater than or equal to a given number.
/// In simpler terms, it rounds a number up to the nearest integer.
/// The ceil() mehtod is commonly used in scernarios where you need to determine the integer value that is
/// just above a given number.
/// Some typical use cases include:
/// Calcualting quantities, Grid Layouts or postioning.
/// Note The ceil() method returns an int.

void main() {
  double number1 = 12.34;
  int celling1 = number1.ceil();
  double number2 = 12.5;
  int celling2 = number2.ceil();

  print("$celling1 and $celling2");
}
