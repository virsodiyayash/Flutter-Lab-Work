import "dart:io";

String printFibonacci(int number){

  if(number < 0){
    print("Please enter number in positive");
  }

  String str = "";
  int a = 0;
  int b = 1;

  for(int i = 0 ; i < number ; i++){
    str = str + '$a';

    if(i < number - 1){
      str = str + " + ";
    }

    int next = a + b;
    a = b;
    b = next;

  }

  return str;

}

void main() {

  print("enter the number : ");
  int number = int.parse(stdin.readLineSync()!);

  String answer = printFibonacci(number);
  print("The fibonacci series for given length is = ${answer}");
}