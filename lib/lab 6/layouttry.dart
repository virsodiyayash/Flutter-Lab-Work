import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class Layout extends StatelessWidget {
    const Layout({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello , How are you?'
          ),
        ),
        body: Text(
          'This is the first original flutter program'
        ),
      );
    }
  }
