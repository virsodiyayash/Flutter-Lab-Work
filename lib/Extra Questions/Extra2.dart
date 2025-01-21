import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extra2 extends StatelessWidget{
  const Extra2({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Hello World"),
       backgroundColor: Colors.black,
     ),

     body: Column(
       children: [
         Expanded(flex: 2,
             child: Row(
           children: [
             Expanded(child: Container(
               child: Expanded(child: Row(
                 children: [
                   Expanded(child: Column(
                     children: [
                       Expanded(child: Container(
                          color: Colors.red,
                        )),
                       Expanded(child: Container(
                         color: Colors.white,
                       )),
                       Expanded(child: Container(
                         color: Colors.blue,
                       ))
                     ],
                   ))
                 ],
               )),
               color: Colors.red,
             )),
             Expanded(child: Container(
               child: Expanded(
                   child: Column(
                 children: [
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(flex: 2,
                             child: Container(
                           color: Colors.blue,
                         )),
                         Expanded(child: Container(
                           color: Colors.lightBlue,
                         )),
                         Expanded(flex: 2,
                             child: Container(
                           color: Colors.yellowAccent,
                         ))
                       ],
                     ),
                   ),
                   Expanded(child: Column(
                     children: [
                       Expanded(
                           child: Row(
                         children: [
                           Expanded(flex: 2,
                               child: Container(
                             color: Colors.orange,
                           )),
                           Expanded(flex: 2,
                               child: Container(
                              color: Colors.lime,
                           )),
                           Expanded(flex: 3,
                               child: Container(
                             color: Colors.purple,
                           )),
                           Expanded(child: Container(
                             color: Colors.yellow,
                           )),
                           Expanded(child: Container(
                             color: Colors.blue,
                           ))
                         ],
                       ))
                     ],
                   ))
                 ],
               )),
               color: Colors.greenAccent,
             ))
           ],
         )),
         Expanded(child: Row(
              children: [
                Expanded(child: Row(
                  children: [
                    Expanded(child: Container(
                      color: Colors.greenAccent,
                    )),
                    Expanded(child: Container(
                      color: Colors.purple,
                    )),
                    Expanded(child: Container(
                      color: Colors.brown,
                    ))
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Expanded(child: Container(
                          color: Colors.grey,
                        )),
                        Expanded(child: Container(
                          color: Colors.greenAccent,
                        )),
                        Expanded(flex: 2,
                            child: Container(
                          color: Colors.purpleAccent,
                        ))
                      ],
                    ))
                  ],
                ))
              ],
         ))
       ],
     ),
   );
  }


}