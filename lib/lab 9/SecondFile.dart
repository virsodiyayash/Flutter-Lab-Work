import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Durationfile extends StatelessWidget {
  const Durationfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Expanded(child: Column(
        children: [
          Text("Hello Kem chho?" , style: TextStyle(color: Colors.red , fontSize: 50),)
        ],
      )),
    );
  }
}
