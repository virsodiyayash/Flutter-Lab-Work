import 'dart:io';

void main(){

    print("Enter first number for prime : ");
    int firstNumber = int.parse(stdin.readLineSync()!);

    print("Enter second number for prime : ");
    int secondNumber = int.parse(stdin.readLineSync()!);

    int num = firstNumber;

      firstNumber++;


    var arr = [];

    for(int i = firstNumber ; i < secondNumber ; i++){
      int count = 0;

      for(int j = 2 ; j < i ; j++){
        if(i % j == 0){
          count = 1;
          break;
        }
      }
      if(count == 0){
        arr.add(i);
      }
    }
    stdout.write("Prime numbers between $num - $secondNumber are : $arr");
}