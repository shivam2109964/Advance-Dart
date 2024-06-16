/// The `padLeft` method extends the lenght of the string by adding 
/// characters to the left (beginning) of the string unitl it reaches a 
/// specified minimum lenght. 
/// if the current string lenght is already equal to or greater than the specified 
/// minimum length, the method returns the original string without any changes. 


void main(){
  String text = "Shivam";

  var value = text.padLeft(8, "a");
  print(value);
}