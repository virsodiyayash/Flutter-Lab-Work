import 'dart:io';

import 'package:flutterprojects/Simple%20Crud/utils/variables.dart';
import 'crud.dart';


void main(){

  User user = new User();
  int getOperation;
  String updateName;
  String updateAge;
  String updateEmail;

  do{

    print("Enter 1) for create user , "
        "  Enter 2) for get user list"
        "  Enter 3) for update user"
        "  Enter 4) for delete user"
        "  Enter 5) for update with choice"
        "  Enter 6) for terminate the program");

    getOperation = int.parse(stdin.readLineSync()!);

    if(getOperation == 1){
      print("Enter name : ");
      String name = stdin.readLineSync()!;
      print("Enter age : ");
      String age = stdin.readLineSync()!;
      print("Enter email : ");
      String email = stdin.readLineSync()!;

      user.createUser(name, age, email);
    }

    if(getOperation == 2){
      List<Map<String , dynamic>> list = user.getUserList();
      print("The list of the users are : ");
      stdout.write(list);
    }

    if(getOperation == 3){

      print("Enter the index which you want to update : ");
      int id = int.parse(stdin.readLineSync()!);

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

      user.updateUser(name, age, email, id);

    }

    if(getOperation == 4){
      print("Enter the id of the user : ");
      int id = int.parse(stdin.readLineSync()!);
      user.deleteUser(id);
    }

  }while(getOperation != 5);

}
