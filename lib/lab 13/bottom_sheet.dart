import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: BottomSheetDemo(),));
}


class BottomSheetDemo extends StatelessWidget {
  BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheetBar"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: ElevatedButton(
            onPressed: (){
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    context: context,
                    builder: (context){
                        return Container(
                          padding: EdgeInsets.all(16),
                          height: 200,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("This is a bottom sheet" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Text("Hello From Yash Virsodiya"),
                              SizedBox(height: 20,),
                              ElevatedButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text("Close"))
                            ],
                          ),
                        );
                      }
                    );
            },
            child: Text("Bottom Sheet")),
      ) ,
    );
  }
}
