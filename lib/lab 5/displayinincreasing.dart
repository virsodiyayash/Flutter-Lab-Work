import 'dart:io';

List<int> sortList(List<int> numbers){
    for(int i = 0 ; i < numbers.length ; i++){
      for(int j = i + 1 ; j < numbers.length ; j++){
        if(numbers[i] > numbers[j]){
          int temp = numbers[i];
          numbers[i] = numbers[j];
          numbers[j] = temp;
        }
      }
    }
    return numbers;
}

void main(){
    List<int> numbers = [];

    print('Enter 5 numbers : ');

    for(int i = 0 ; i < 5 ; i++){
      stdout.write('Number ${i + 1}: ');

      int input = int.parse(stdin.readLineSync()!);
      numbers.add(input);
    }

    List<int> sortedNumbers = sortList(numbers);

    for(int i = 0 ; i < numbers.length ; i++){
      stdout.write('${sortedNumbers[i]} ');
    }
}