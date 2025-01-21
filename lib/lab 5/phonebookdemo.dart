import 'dart:io';

class Friend{
  String name = '';
  int age = 0;
  String email = '';

  Friend(String name , int age , String email){
    this.name = name;
    this.age = age;
    this.email = email;
  }

  String str(){
    return 'Name : ${this.name} , age : ${this.age} , email : ${this.email}';
  }
}

void main(){
  Map<String , Friend> m = {
      "Yash" : Friend("Yash" , 18 , "yash@gmail.com"),
      "meet" : Friend("meet" , 7 , "meet@gmail.com"),
      "mann" : Friend("mann" , 6 , "mann@gmail.com"),
      "jenil" : Friend("jenil" , 45 , "jenil@gmail.com")
  };

  String searchName = "mann";

  if(m.containsKey(searchName)){
      print('Details for ${searchName}');
      Friend f1=m[searchName] as Friend;
      print(f1.name);
      print(f1.age);
      print(f1.email);
  }
  
  else{
    print('No details found for ${searchName}');
  }
}