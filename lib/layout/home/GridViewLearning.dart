import 'package:flutter/material.dart';  

class GridViewLearning extends StatelessWidget {  
  GridViewLearning({super.key});

  @override  
  Widget build(BuildContext context) {  
    // var items;
    return Container(  
      // decoration: BoxDecoration(  
      //   color: Colors.green, borderRadius: BorderRadius.circular(15)),  
      // child: const Center(child: Text('Hello World')),  
      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(20, (index){
          return Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
        })
      )

      // GridView.builder(
      //     padding: const EdgeInsets.all(30),
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       childAspectRatio: 2 /2,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //     ),

      // child: GridView.builder(
      //   padding: const EdgeInsets.all(30),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 2 /2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemCount: items.length,
      //   itemBuilder: (context, index){
      //     return Container(
      //       color:Colors.blue,
      //       child: Center(
      //         child: Text(
      //           items[index],
      //           style: TextStyle(fontSize: 18.0, color: Colors.white),
      //         ),
      //       ),
      //     ); 
      //   }
      // )

      // child: GridView.extent(
      //   maxCrossAxisExtent: 200.0,
      //   mainAxisSpacing: 8.0,
      //   crossAxisSpacing: 8.0,
      //   padding: EdgeInsets.all(8.0),
      //   children: items.map((item){
      //     return Container(
      //       color:Colors.blue,
      //       child: Center(
      //         child: Text(
      //           item,
      //           style: TextStyle(fontSize: 18.0, color: Colors.white),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // )

      // child: Scaffold(
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
    ); // Container  
  }
}