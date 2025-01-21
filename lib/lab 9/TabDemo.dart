import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoTab extends StatelessWidget {
  const DemoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs:
            [
              Tab(
                child: Text('Demo1'),
              ),
              Tab(
                child: Text('Demo2'),
              ),
              Tab(
                child: Text('Demo3'),
              ),
            ]
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text('Demo1'),),
            Center(child: Text('Demo2'),),
            Center(child: Text('Demo3'),)
          ]),
        ));
  }
}
