import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Layout(),
));

class Layout extends StatelessWidget {
  const Layout({super.key});

Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Lab_7_1'),
        ),
          body:  Column(
            children: [
              Text('Hello World' , style: TextStyle(
                  color: Colors.red,
                  fontSize: 25
              ),),
              customStyle(name : "Yash Virsodiya", fs:  25, clr : Colors.red)
            ],
          )
      );
  }
}

Widget customStyle({required String name , required fs , required clr} ){
  return Center(
    child: Text(name , style: TextStyle(
      color: clr,
      fontSize: fs
    ),

    ),
  );
}