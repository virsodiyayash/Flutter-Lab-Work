import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddUserDempo extends StatelessWidget {
  const AddUserDempo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Add User" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
