import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("About Us" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
