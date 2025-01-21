import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondFile.dart';

class TimeCheck extends StatefulWidget {
  const TimeCheck({super.key});

  @override
  State<TimeCheck> createState() => _DurationfileState();
}

class _DurationfileState extends State<TimeCheck> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2) , (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Durationfile()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Duration"),
        backgroundColor: Colors.blue,
      ),
      body: Expanded(
        child: Column(
          children: [
            Image.asset("assets/images/birthday.jpg")
          ],
        ),
      ),
    );
  }
}
