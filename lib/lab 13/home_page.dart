import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageDemo extends StatelessWidget {
  const HomePageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
