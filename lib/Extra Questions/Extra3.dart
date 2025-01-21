import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extra3 extends StatelessWidget{
    const Extra3({super.key});

    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(flex:2,
                    child: Container(
                  color: Colors.brown,
                )),
                Expanded(child: Container(
                  color: Colors.lightBlue,
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(flex:2,
                    child: Container(
                  color: Colors.yellow,
                )),
                Expanded(child: Container(
                  child: Expanded(child: Row(
                    children: [Expanded(child: Container(
                      color: Colors.greenAccent,
                      child: Expanded(child: Column(
                        children: [
                          Expanded(child: Column(
                            children: [Expanded(child: Container(
                              color: Colors.greenAccent,
                            )),
                              Expanded(child: Container(
                                color: Colors.purple,
                              ))
                            ],
                          ))
                        ],
                      )),
                    )),
                      Expanded(child: Container(
                        color: Colors.blueGrey,
                        child: Expanded(child: Column(
                          children: [
                            Expanded(child: Column(
                              children: [
                                Expanded(child: Container(
                                  color: Colors.blueGrey,
                                )),
                                Expanded(child: Container(
                                  color: Colors.pink,
                                ))
                              ],
                            ))
                          ],
                        )),
                      )),
                    ],
                  )),
                  color: Colors.red,
                )),
                Expanded(flex: 2,
                    child: Container(
                  color: Colors.blue,
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Row(
                  children: [
                    Expanded(child: Container(
                      color: Colors.black,
                    )),
                    Expanded(child: Container(
                      color: Colors.white,
                    )),
                    Expanded(child: Container(
                      color: Colors.black,
                    )),
                    Expanded(child: Container(
                      color: Colors.white,
                    ))
                  ],
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Row(
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
                                color: Colors.blue,
                              ))
                            ],
                          )),
                          Expanded(child: Column(
                            children: [
                              Expanded(child: Container(
                                color: Colors.black,
                                child: Expanded(child: Row(
                                  children: [
                                    Expanded(child: Column(
                                      children: [
                                        Expanded(child: Container(
                                          color: Colors.pink
                                        )),
                                        Expanded(child: Container(
                                          color: Colors.grey,
                                        ))
                                      ],
                                    )),
                                    Expanded(child: Column(
                                      children: [
                                        Expanded(child: Container(
                                          color: Colors.brown,
                                        )),
                                        Expanded(child: Container(
                                          color: Colors.blue,
                                        ))
                                      ],
                                    ))
                                  ],
                                )),
                              )),
                              Expanded(child: Container(
                                color: Colors.purple,
                              ))
                            ],
                          ))
                        ],
                      )),
                      color: Colors.blue,
                    )),
                    Expanded(child: Container(
                      color: Colors.greenAccent,
                    )),
                    Expanded(child: Container(
                      child: Expanded(child: Column(
                        children: [
                          Expanded(child: Row(
                            children: [
                              Expanded(child: Container(
                                child: Expanded(child: Column(
                                  children: [
                                    Expanded(child: Container(
                                      color: Colors.purple,
                                    )),
                                    Expanded(child: Container(
                                      color: Colors.blue,
                                    ))
                                  ],
                                )),
                                color: Colors.black,
                              )),
                              Expanded(child: Container(
                                color: Colors.green,
                                child: Expanded(child: Column(
                                  children: [
                                    Expanded(child: Row(
                                      children: [
                                        Expanded(child: Container(
                                          color:Colors.red
                                        )),
                                        Expanded(child: Container(
                                          color: Colors.brown,
                                        ))
                                      ],
                                    )),
                                    Expanded(child: Column(
                                      children: [
                                        Expanded(child: Row(
                                          children: [
                                            Expanded(child: Container(
                                              color: Colors.purple,
                                            )),
                                            Expanded(child: Container(
                                              color: Colors.greenAccent,
                                            ))
                                          ],
                                        ))
                                      ],
                                    ))
                                  ],
                                )),
                              )),
                            ],
                          )),
                          Expanded(child: Column(
                            children: [
                              Expanded(child: Row(
                                children: [
                                  Expanded(child: Container(
                                    color: Colors.pink,
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
                      color: Colors.red,
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
