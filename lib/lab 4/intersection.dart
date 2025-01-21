List<int> intersect(List<int> nums1 , List<int> nums2){
  List<int> result = [];

  for(int i = 0 ; i < nums1.length ; i++){
    for(int j = 0 ; j < nums2.length ; j++){
      if(nums1[i] == nums2[j]){
        result.add(nums1[i]);
        nums2[j] = -1;
        break;
      }
    }
  }
  return result;
}

void main(){
  List<int> nums1 = [1 , 2 , 2 , 1];
  List<int> nums2 = [2 , 2];

  List<int> intersectionResult = intersect(nums1, nums2);
  
  print("Intersection : $intersectionResult");
}