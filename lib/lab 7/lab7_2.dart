import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/Simple%20Crud/utils/variables.dart';

void main() => runApp(MaterialApp(
  home: Layout(),
));

class Layout extends StatefulWidget {
      Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
TextEditingController name = TextEditingController();

Widget build(BuildContext context){
  return Scaffold(
    body: Column(
      children: [
        TextField(
          controller: name,
        ),
        ElevatedButton(onPressed: (){setState((){

        });}, child: Text("Submit")),
        Text(name.text)
      ],
    ),
  );
}
}