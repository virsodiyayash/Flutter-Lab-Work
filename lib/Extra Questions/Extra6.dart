import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extra6 extends StatelessWidget {
    Extra6({super.key});

  List<String> userList = [
    "User", "User" , "User", "User", "User" , "User", "User", "User" , "User", "User", "User" , "User", "User",
    "User", "User", "User" , "User", "User", "User" , "User", "User", "User" , "User", "User", "User" , "User",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello , How r u???"),
          backgroundColor: Colors.blue,
        ),

      body: ListView(children: getListItem(),),
    );
  }

  List<Widget> getListItem(){
    List<Widget> widgets = [];

    for(int i = 0 ; i < userList.length ; i++) {
      widgets.add(ListTile(
        leading: Icon(Icons.arrow_forward),
          title: Text("${userList[i]} $i"),
      ));
    }
    return widgets;
  }
}
