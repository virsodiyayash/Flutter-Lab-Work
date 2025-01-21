import 'dart:io';

class User{

  List<Map<String , dynamic>> userList = [];

  void createUser(name , age , email){
    Map<String , dynamic> map = {};

    map["name"] = name;
    map["age"] = age;
    map["email"] = email;

    userList.add(map);
  }

  List<Map<String , dynamic>> getUserList(){
    return userList;
  }

  void updateUser(name , age , email , id){
    Map<String , dynamic> map = {};

    map["name"] = name;
    map["age"] = age;
    map["email"] = email;

    userList[id] = map;
  }

  void deleteUser(id){
    userList.removeAt(id);
  }

  void updateWithChoice(id){
    print("What would you want to update : ");
    String wantToUpdate = stdin.readLineSync()!;

    if(wantToUpdate.toLowerCase() == "name"){
      print("Enter the name you want to update : ");
      String name = stdin.readLineSync()!;
    }

    if(wantToUpdate.toLowerCase() == "age"){
      print("Enter the age you want to update : ");
      String age = stdin.readLineSync()!;
    }

    if(wantToUpdate.toLowerCase() == "email"){
      print("Enter the email you want to update : ");
      String email = stdin.readLineSync()!;
    }
  }

}