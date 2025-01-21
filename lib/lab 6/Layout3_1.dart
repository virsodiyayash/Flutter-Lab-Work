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
        children : [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(child: Container(
                  color: Colors.blue,
                  )
                ),
                Expanded(child: Container(
                  color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                Expanded(child: Container(
                  color: Colors.pink,
                )
                ),
                Expanded(child: Container(
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(child: Container(
                  color: Colors.black,
                )
                ),
                Expanded(child: Container(
                  color: Colors.red,
                ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

