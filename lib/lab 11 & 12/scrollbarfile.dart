import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: ScrollBarFile(),));
}


class ScrollBarFile extends StatefulWidget {
  const ScrollBarFile({super.key});

  @override
  State<ScrollBarFile> createState() => _ScrollBarFileState();
}

class _ScrollBarFileState extends State<ScrollBarFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollBar File"),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text("Yash" , style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text("Yash" , style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text("Yash" , style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text("Yash" , style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text("Yash" , style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text("Yash" , style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
