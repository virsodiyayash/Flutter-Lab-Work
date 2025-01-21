import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// const Lab82({super.key});

class Lab82 extends StatefulWidget {

   Lab82({super.key});

  @override
  State<Lab82> createState() => _Lab82State();
}

class _Lab82State extends State<Lab82> {
  TextEditingController name = new TextEditingController();

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday Wisher"),
        backgroundColor: Colors.blue,
      ),

      body: flag==true?Stack(
        children: [
          Center(
            child: Image.asset('assets/images/birthday.jpg'),
          ),
          Center(
            child: Text(
              'Happy Birthday ${name.text}',
              style: TextStyle(color: Colors.white , fontSize: 50 , backgroundColor:
              Colors.black.withOpacity(0.5)
              ),
            ),
          )
        ],
      ):Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              labelText: "Enter Name",
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              flag = true;
            });
          }, child: Text("Submit"))
        ],
      )
    );
  }
}
