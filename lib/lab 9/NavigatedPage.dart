import 'package:flutter/material.dart';

class NavigatorFile extends StatelessWidget {
  var name;
   NavigatorFile({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/images/birthday.jpg'),
          ),
          Center(
            child: Text("Happy Birthday ${name}" ,
            style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
