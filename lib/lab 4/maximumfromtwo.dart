import "dart:io";


int findMaximum(int first , int second){
  if(first > second){
    return first;
  }

  else{
    return second;
  }
}


void main() {

  print("Enter number 1 : ");
  int firstNumber = int.parse(stdin.readLineSync()!);

  print("enter number 2 : ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  int ans = findMaximum(firstNumber , secondNumber);
  print("The maximum number from $firstNumber and $secondNumber is $ans");
}