import "dart:io";

int checkPrime(int number){
  if(number <= 0){
    print("Please enter positive number");
  }

  for(int i = 2 ; i <= number / 2 ; i++){
    if(number % 2 == 0){
      return 0;
    }
  }
  return 1;
}

void main() {

  print("Enter number : ");
  int number = int.parse(stdin.readLineSync()!);

  int result = checkPrime(number);

  if(result == 1){
      print("$number is a prime number");
  }
  else{
    print("$number is not a prime number");
  }
}