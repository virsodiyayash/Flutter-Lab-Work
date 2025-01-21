import "dart:io";

void main() {
  print("Enter number 1 : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter number 2 : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter number 3 : ");
  int c = int.parse(stdin.readLineSync()!);

  (a>c)?(a>b?print(a):print(b)):(b>c?print(b):print(c));
}