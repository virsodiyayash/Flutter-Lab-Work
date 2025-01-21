import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/Simple%20Crud/utils/variables.dart';


class Lab73 extends StatefulWidget {
  Lab73({super.key});

  @override
  State<Lab73> createState() => _LayoutState();
}

class _LayoutState extends State<Lab73> {
  var key =new GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Hello World!!!"),
       backgroundColor: Colors.limeAccent,
     ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(key: key,child: Column(
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide()
                ),
                hintText: "enter your name"
              ),
              validator: (value) {
                if(value == null){
                  return "enter name";
                }
                else{
                  return null;
                }
              },
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide()
                  ),
                  hintText: "enter your email"
              ),
              validator: (value) {
                if(value == null){
                  return "enter email";
                }
                else if(!RegExp(r'^[a-z]*@gmail.com$').hasMatch(value)){
                  return "Please enter valid email";
                }
                else{
                  return null;
                }
              },
            ),
            ElevatedButton(onPressed: (){

                  print('Is Validate : ${key.currentState!.validate()}');

            }, child: Text("submit"))
          ],
        )),
      )
    );
  }


}