import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteDemo extends StatelessWidget {
  const FavouriteDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Favourite Users" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
