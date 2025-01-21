void insertElementAtPosition(List<int> array , int element , int position){
  if(position < 0 || position > array.length){
    print("Invalid Position");
    return;
  }

  array.add(0);

  for(int i = array.length - 2; i >= position ; i--){
    array[i + 1] = array[i];
  }

  array[position] = element;
}

void main(){
  List<int> array = [1 , 2 , 4 , 5];
  int element = 3;
  int position = 2;

  insertElementAtPosition(array, element, position);
  print(array);
}