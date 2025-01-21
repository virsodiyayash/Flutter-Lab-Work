import 'dart:io';

void main(){
    List<int> l1 = [];
    int length = int.parse(stdin.readLineSync()!);
    print('Enter the numbers in list : ');
    for(int i = 0 ; i < length ; i++){
        int input = int.parse(stdin.readLineSync()!);
        l1.add(input);
    }

    int sum = 0;

    for(int i = 0 ; i < length ; i++){
      if(l1[i] % 3 == 0 || l1[i] % 5 == 0){
        sum = sum + l1[i];
      }
    }

    print("Sum = ${sum}");
}