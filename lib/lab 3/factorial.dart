import "dart:io";

void main() {
  print("Enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  int ans = 1;

  for(int i = num1 ; i >= 1; i--){
    ans = ans * i;
  }

  print("factorial of $num1 is = $ans");
}