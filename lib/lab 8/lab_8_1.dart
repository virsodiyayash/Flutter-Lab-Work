import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab81 extends StatelessWidget {
  const Lab81({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Image.asset('assets/images/pexels-fmaderebner-869258.jpg')
          ),
          Center(
            child: Text(
              "Happy Birthday",
              style: TextStyle(color: Colors.red , fontSize: 50 , backgroundColor:
                Colors.black.withOpacity(0.5)
              ),
            ),
          )
        ],
      ),
    );
  }
}
