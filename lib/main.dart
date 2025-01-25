import 'package:flutter/material.dart';
import 'package:latihan/layout/home/homepagewithmenu.dart';
import 'package:latihan/layout/home/GridViewLearning.dart';
import 'package:latihan/layout/home/ListViewLearning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Home Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text('My Home Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            title: Text('News Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Newspage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Judul'),
      //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   ),
      //   body: GridView.builder(
      //     padding: const EdgeInsets.all(30),
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       childAspectRatio: 2 /2,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //     ),
      //     itemBuilder: (ctx, i) => GridViewLearning()
      //   )
      // ),
  
