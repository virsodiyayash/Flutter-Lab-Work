import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/Simple%20Crud/utils/variables.dart';

class Extra1 extends StatelessWidget {
  const Extra1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(child: Row(
          children: [
            Expanded(flex:2,
                child: Container(
              color: Colors.yellow,
            )),
            Expanded(flex: 2,
                child: Container(
              child: Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        color: Colors.deepOrange,
                      )),
                      Expanded(child: Container(
                        color: Colors.cyan,
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        color: Colors.pink,
                      )),
                      Expanded(child: Container(
                        color: Colors.black,
                      ))
                    ],
                  ))
                ],
              )),
            )),
          ],
        )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                color: Colors.blue,
              )),
             Expanded(child: Container(
               child: Expanded(child: Row(
                 children: [
                   Expanded(child: Column(
                     children: [
                       Expanded(child: Container(
                       color: Colors.black,
                     )),
                       Expanded(flex: 2,
                           child: Container(
                         color: Colors.deepPurpleAccent,
                       )),
                       Expanded(child: Container(
                         color: Colors.orange,
                       ))
                     ],
                   )),

                   Expanded(child: Column(
                     children: [
                       Expanded(
                           child: Container(
                         color: Colors.green,
                       )),
                       Expanded(child: Container(
                         color: Colors.yellow,
                       )),
                       Expanded(child: Container(
                         color: Colors.amber,
                       ))
                     ],
                   )),

                   Expanded(child: Column(
                      children: [
                        Expanded(flex: 2,
                            child: Container(
                          color: Colors.white30,
                        )),
                        Expanded(child: Container(
                          color: Colors.green,
                        )),
                        Expanded(flex: 2,
                            child: Container(
                          color: Colors.brown,
                        ))
                      ],
                   ))
                 ],
               )),
             )),
              Expanded(child: Container(
                color: Colors.grey,
              ))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                color: Colors.red,
              )),
              Expanded(child: Container(
                color: Colors.green,
              )),
              Expanded(child: Container(
                color: Colors.greenAccent,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
