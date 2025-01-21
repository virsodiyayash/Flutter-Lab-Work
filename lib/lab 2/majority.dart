import 'dart:io';

void main(){
    print("Enter the length of the array : ");
    int length = int.parse(stdin.readLineSync()!);

    List<int> list = [];
    int count = 1;
    String ans = '';

    for(int i = 0 ; i < length ; i++){
      stdout.write("Enter the element at index ${i + 1} : ");
      int element = int.parse(stdin.readLineSync()!);
      list.add(element);
    }

    // Sorting the array
    for(int i = 0 ; i < length ; i++){
      for(int j = i + 1 ; j < length ; j++){
        if(list[i] >= list[j]){
          int temp = list[i];
          list[i] = list[j];
          list[j] = temp;
        }
      }
    }

    List<int> answer = [];

    for(int i = 0 ; i < length ; i++){
      for(int j = i + 1 ; j < length ; j++){
        if(list[i] == list[j]){
          count = count + 1;
        }
      }
      if(count > (length / 2)){
        if(!answer.contains(list[i])){
          answer.add(list[i]);
        }
      }
    }

    print(answer);
}