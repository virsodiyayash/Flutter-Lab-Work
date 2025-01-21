import 'dart:io';

void main(){

    List<int> list1 = [];
    List<int> list2 = [];
    List<int> temp = [];
    List<int> ans = [];

    print('Enter the number of list 1 : ');

    for(int i = 0 ; i < 5 ; i++){
      stdout.write('Enter the element at index ${i + 1} : ');
      int input = int.parse(stdin.readLineSync()!);

      list1.add(input);
    }

    for(int i = 0 ; i < 5 ; i++) {
      stdout.write('Enter the element at index ${i + 1} : ');
      int input = int.parse(stdin.readLineSync()!);

      list2.add(input);
    }

    int i = 0;

    for(int i = 0 ; i < 5 ; i++){
      if(list2.contains(list1[i]) && !ans.contains(list1[i])){
          ans.add(list1[i]);
      }
    }

   print(ans);
}