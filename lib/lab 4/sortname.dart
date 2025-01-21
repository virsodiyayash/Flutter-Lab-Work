List<String> sortedNamesByHeights(List<String> names , List<int> heights){
  for(int i = 0 ; i < heights.length ; i++){
    for(int j = i + 1 ; j < heights.length ; j++){
      if(heights[i] < heights[j]){
        int tempHeight = heights[i];
        heights[i] = heights[j];
        heights[j] = tempHeight;

        String tempName = names[i];
        names[i] = names[j];
        names[j] = tempName;
      }
    }
  }
  return names;
}

void main(){
  List<String> names = ["Mary" , "John" , "Emma"];

  List<int> heights = [180 , 165 , 170];

  List<String> sortedNames = sortedNamesByHeights(names , heights);
  print(sortedNames);
}