import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main(){
  runApp(
    MaterialApp(home: DateTimeScreen(),)
  );
}


class DateTimeScreen extends StatelessWidget {
  const DateTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    DateTime currentDate = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
          backgroundColor: Colors.blue,
        ),
      
        body: Center(
          child: Column(
            children: [
              Text("${DateFormat('dd/MM/yyyy').format(currentDate)}" , style: TextStyle(fontSize: 20),),
              Text("${DateFormat('dd-MM-yyyy').format(currentDate)}" , style: TextStyle(fontSize: 20),),
              Text("${DateFormat('dd-MMM-yyyy').format(currentDate)}" , style: TextStyle(fontSize: 20),),
              Text("${DateFormat('dd-MM-yy').format(currentDate)}" , style: TextStyle(fontSize: 20),),
              Text("${DateFormat('dd MMM, yyyy').format(currentDate)}" , style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
    );
  }
}
