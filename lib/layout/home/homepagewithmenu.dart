import 'Package:flutter/material.dart';
import 'MyHomePage.dart';
import 'package:latihan/layout/home/GridViewLearning.dart';
import 'package:latihan/layout/home/ListViewLearning.dart';

class Mainscreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<Mainscreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    MyHomePage(title : 'Flutter Demo Home Page'),
    GridViewLearning(),
    ListsWithCards(),
  ];
  @override build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text ('Bottom Navogation Demo'),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icon.home),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label:'GridView',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.list),
            label:'ListView',
          ),
        ],
      ),
    );
  }
}
