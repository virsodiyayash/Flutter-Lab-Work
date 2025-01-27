import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
     ListDemo({super.key});
  List<String> name = ['demo1' , 'demo2' , 'demo3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: name.length, itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Swing(
              child: Container(
                height: 400,
                color: Colors.blue, 
                child: Text(
                  "name : ${name[index]}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          );
      },
      ),
    );
  }
}
