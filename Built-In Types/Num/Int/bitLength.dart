/// bitLength is a getter method available on integer types int in Dart
/// that returns the numbers of bits required to represent the integer in binary notation, 
/// excluding leading zeros.
/// The bitLength getter in Dart's int type indicates how many bits are needed to represent 
/// a particular integer in binary form.
/// This directly correlates to the size in bits that the integer requires for storege or representation in memory. 
void main() {
int number = 2544444444444444440;
  print(number.bitLength);
}
