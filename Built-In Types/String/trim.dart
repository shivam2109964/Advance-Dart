void main() {
  String name = " \tShivam Hello   \n";
  var newData = name.trim();
  print(newData);
  String name1 = " \tShivam Hello   \n";
  print(name1); 

  String forTrimLeft = "\tShivam Gupta\t    ";
  String forTrimRight = '\tShivam Gupta\t    ';

  print(forTrimLeft.trimLeft());
  print(forTrimRight.trimRight());
}
