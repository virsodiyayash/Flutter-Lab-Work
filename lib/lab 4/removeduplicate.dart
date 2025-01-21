int removeDuplicates(List<int> nums){
  if(nums.isEmpty) return 0;

  int j = 1;

  for(int i = 1 ; i < nums.length ; i++){
    if(nums[i] != nums[i - 1]){
      nums[j] = nums[i];
      j++;
    }
  }
  nums.length = j;
  return j;
}

void main(){
  List<int> nums = [0 , 0 , 1 , 1 , 1 , 2 , 2 , 3 , 3 , 4];

  int uniqueCount = removeDuplicates(nums);
  
  print("The number of unique elements : $uniqueCount");
  print("Array after removing duplicate : $nums");

}