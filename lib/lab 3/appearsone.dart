
int findSingleNumber(List<int> nums){
  int result = 0;
  int length = nums.length;

  for(int i = 0 ; i < length ; i++){
    bool foundDuplicate = false;

    for(int j = 0 ; j < length ; j++){
      if(i != j && nums[i] == nums[j]){
        foundDuplicate = true;
        break;
      }
    }

    if(!foundDuplicate){
      return nums[i];
    }
  }
  return 0;
}

void main(){
    List<int> nums = [4 , 1 , 2 , 1 , 2];

    int answer = findSingleNumber(nums);
    print("The answer is : $answer");
}