/// In the world of numbers, the absolute value of a number is its distance from zero.
/// It disregards whether the number is positive or negative.
/// The abs() method in Dart is a handy way to calculate the absolute value of an integer
/// Uses of abs method
/// 1. Distance Calculations
///    When you need to determine the distance between two points, you often use absoulte values to ensure positive results.
/// 2. Error Margins
/// 3. Data Transformations
///    Sometimes, you might want to transform negative values into their positive counterparts for easier analyisis
///    or visualization.
/// 4. Mathematical Functions

void main() {
  int number = -15;
  int absoluteValue = number.abs();
  print(absoluteValue);
}
