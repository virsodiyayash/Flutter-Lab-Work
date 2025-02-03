import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/lab%2013/about_us.dart';
import 'package:untitled/lab%2013/add.dart';
import 'package:untitled/lab%2013/favourite.dart';
import 'package:untitled/lab%2013/home_page.dart';

void main(){
  runApp(MaterialApp(home: BottomBarDemo(),));
}

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {

  int selectedIndex = 0;

  List<Widget> pages = [
    HomePageDemo(),
    AddUserDempo(),
    FavouriteDemo(),
    AboutUs(),
  ];

  void onSelectedTab(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar demo"),
        backgroundColor: Colors.blue,
      ),

     body: pages[selectedIndex],

     bottomNavigationBar: BottomNavigationBar(items: [
       BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.add) , label: "Add"),
       BottomNavigationBarItem(icon: Icon(Icons.favorite) , label: "Favourite"),
       BottomNavigationBarItem(icon: Icon(Icons.info) , label: "About Us"),
     ],
      currentIndex: selectedIndex,
       selectedItemColor: Colors.blue,
       unselectedItemColor: Colors.grey,
       onTap: onSelectedTab,
     ),
    );
  }
}
