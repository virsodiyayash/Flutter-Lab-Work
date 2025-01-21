import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extra4 extends StatefulWidget {
  const Extra4({super.key});

  @override
  State<Extra4> createState() => _Extra4State();
}

class _Extra4State extends State<Extra4> {
  TextEditingController name = TextEditingController();
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, r u fine?"),
        backgroundColor: Colors.blue,
      ),
      
      body: flag==true? Stack(
        children: [
          Center(
            child: Image.asset('assets/images/birthday.jpg'),
          ),
          Center(
            child: Text(
              "Happy Birthday ${name.text}",
              style: TextStyle(color: Colors.white , fontSize: 50 , backgroundColor:
              Colors.black.withOpacity(0.5)
              ),
            ),
          )
        ],
      ):Center(child: Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              labelText: "Enter your name"
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              flag = true;
            });
          }, child: Text("Submit"))
        ],
      ))
    );
  }
}
