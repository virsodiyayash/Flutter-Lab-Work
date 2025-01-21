import "dart:io";

void main() {

    print("enter string : ");
    String str = stdin.readLineSync()!;

    int length = str.length;
    int count = 0;

    for(int i = length - 1; i >= 0 ; i--){
        if(str[i] == ' '){
          print("The length of the last word is $count");
          break;
        }
        count++;
    }

}