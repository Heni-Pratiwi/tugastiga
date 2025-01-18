import 'package:flutter/material.dart';
import 'package:latihan/layout/home/homepagewithmenu.dart';
import 'package:latihan/layout/home/GridViewLearning.dart';
import 'package:latihan/layout/home/ListViewLearning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Mainscreen()
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
    );
  }
}