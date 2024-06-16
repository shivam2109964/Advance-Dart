void main(){
  String text = 'Shimva go in mandir and after that do mediation and in mmji jsbmn';
  RegExp regExp = RegExp(r'[m]');
  String newText = text.replaceAll(regExp, "w");
  print(newText);

}