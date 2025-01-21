import "dart:io";

void main() {
  print("Enter string : ");

  String str = stdin.readLineSync()!;
  String revstr = "";

  for(int i = str.length - 1 ; i >= 0 ; i--){
    revstr = (revstr + str[i]);
  }
  print(revstr);
}