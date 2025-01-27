import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(home: ListAndGrid(),
    )
  );
}


class ListAndGrid extends StatefulWidget {


  ListAndGrid({super.key});

  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

class _ListAndGridState extends State<ListAndGrid> {
  List<String> nameList = ['Yash' , 'Meet' , 'Vishal' , 'Jenil' , 'Mann'];

  bool isListView = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Grid And List View"),
        backgroundColor: Colors.blue,

        actions: [
          Center(
            child: CupertinoSwitch(
              // This bool value toggles the switch.
              value: isListView,
              activeTrackColor: CupertinoColors.activeBlue,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  isListView = value;
                });
              },
            ),
          )
        ],
      ),

      body: isListView?
          ListView.builder(itemCount: nameList.length , itemBuilder: (context , index) {
              return Padding(padding: EdgeInsets.all(8),
                child: Container(
                  height: 200,
                  color: Colors.red,
                  child: Center(
                    child: Text("${nameList[index]}" , style: TextStyle(fontSize: 30),),
                  ),
                ),
              );
          }) : GridView.builder(
        itemCount: nameList.length ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
        itemBuilder: (context , index){
          return Padding(padding: EdgeInsets.all(8),
            child: Container(
              width: 200,
              color: Colors.red,
              child: Center(
                child: Text("${nameList[index]}" , style: TextStyle(fontSize: 30),),
              ),
            ),
          );
        },
      )
    );
  }
}
