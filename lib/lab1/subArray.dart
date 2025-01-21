import 'dart:io';

int maxSubArray(List<int> nums){
    int maxSum = nums[0];
    int currentSum = 0;

    for(int num in nums){
      currentSum = currentSum + num;

      if(currentSum > maxSum){
        maxSum = currentSum;
      }

      if(currentSum < 0){
        currentSum = 0;
      }
    }
    return maxSum;
}

void main(){
  List<int> l1 = [];

  print('Enter the length of the array : ');
  int length = int.parse(stdin.readLineSync()!);

  for(int i = 0 ; i < length ; i++){
    stdout.write('Enter the value at index ${i + 1} : ');
    int input = int.parse(stdin.readLineSync()!);
    l1.add(input);
  }

  int answer = maxSubArray(l1);

  print("The answer is = $answer");

}