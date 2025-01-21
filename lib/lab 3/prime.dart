import "dart:io";

void main() {
  print("Enter number 1 : ");
  int num = int.parse(stdin.readLineSync()!);
  int flag = 0;

  for(int i = 2 ; i <= num/2 ; i++){
      if(num % i == 0){
        flag = 1;
      }
  }

  if(flag == 0){
    print("$num is prime number");
  }

  else{
    print("$num is not prime number");
  }
}