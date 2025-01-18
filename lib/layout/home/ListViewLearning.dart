import 'package:flutter/material.dart';

class ListsWithCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<List<String>> listsData = [
      ['Item 1','Item 2','Item 3'],
      ['Item A','Item B','Item C','Item D'],
      ['Item X','Item 2','Item 3'],
      ['Item 1','Item 2','Item 3'],
      ['Item 1','Item 2','Item 3'],
    ];

    return ListView.builder(
      itemCount: listsData.length,
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
}

class CardList extends StatelessWidget {
  final List<String> listData;
  CardList({required this.listData});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('List ${listData[0]}'),
          ),
          Divider(),
          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return ListTile(
                title: Text(listData[index]),
              );
            },
          )
        ],
      )
    );
  }
}