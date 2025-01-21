import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/lab%209/NavigatedPage.dart';
import '';

class PageNavigator extends StatelessWidget {
  TextEditingController name = TextEditingController();
  PageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday Wisher"),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  hintText: "Enter Your Name"
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigatorFile(name: name.text,)));
              }, child: Text("Submit"),)
            ],
          ),
        ),
      ),
    );
  }
}
