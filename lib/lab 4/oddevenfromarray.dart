import "dart:io";

void sumArray(List<int> arr) {
  int oddSum = 0;
  int evenSum = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      evenSum = evenSum + 1;
    } else if (arr[i] % 2 == 1) {
      oddSum = oddSum + 1;
    }
  }

  print("The count of even numbers of an array is $evenSum");
  print("The count of odd numbers of an array is $oddSum");
}

void main() {
  print("Enter the length of the array : ");
  int length = int.parse(stdin.readLineSync()!);
  var arr = <int>[];

  for (int i = 0; i < length; i++) {
    print("Enter the value in array at index $i");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  sumArray(arr);
}
