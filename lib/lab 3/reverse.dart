import "dart:io";

void main() {
  print("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  int revnum = 0;

  while(num != 0){

    int remainder = num % 10;
    revnum = (revnum * 10) + remainder;
    num = int.parse((num/10).toStringAsFixed(0));

  }
  print(revnum);
}