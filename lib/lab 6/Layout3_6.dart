import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/lab%206/layouttry.dart';

void main() => runApp(MaterialApp(
  home: Layout(),
));

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Layout'
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex:2,
                        child: Container(
                          color: Colors.red,
                        )
                    ),
                    Expanded(
                        child: Container(
                          color: Colors.yellow,
                        )
                    )
                  ],
                )
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.blueGrey,
                        )
                    ),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(child: Container(
                                    color: Colors.red,
                                  )),
                                  Expanded(child: Container(
                                    color: Colors.yellow,
                                  ))
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(child: Container(
                                    color: Colors.yellow,
                                  )),
                                  Expanded(child: Container(
                                    color: Colors.red,
                                  ))
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Expanded(
                      flex: 2,
                        child: Container(
                          color: Colors.pinkAccent,
                        )
                    )
                  ],
                )
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.black,
                        )
                    ),
                    Expanded(
                        child: Container(
                          color: Colors.white,
                        )
                    ),
                    Expanded(
                        child: Container(
                          color: Colors.black,
                        )
                    ),
                    Expanded(
                        child: Container(
                          color: Colors.white,
                        )
                    )
                  ],
                )
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        color: Colors.amber,
                                      )
                                  ),
                                  Expanded(
                                      child: Container(
                                        color: Colors.green,
                                      )
                                  )
                                ],
                              )),
                              
                        )
                    ),
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        )
                    ),
                    Expanded(
                        child: Container(
                          color: Colors.yellow,
                        )
                    )
                  ],
                )
            ),
          ],
        )
    );
  }
}

