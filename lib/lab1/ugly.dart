import 'dart:io';

void main(){
  print('Enter the number : ');

  int number = int.parse(stdin.readLineSync()!);

  while(number % 2 == 0){
    number = number ~/ 2;
  }

  while(number % 3 == 0){
    number = number ~/ 3;
  }

  while(number % 5 == 0){
    number = number ~/ 5;
  }

  if(number == 1){
    print('The given number is an ugly number');
  }

  else{
    print('The given number is not an ugly number');
  }

}