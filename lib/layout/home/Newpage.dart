import 'package:flutter/material.dart';
import 'package:latihan/layout/home/models/Getnews.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'apiPage/NewsCard.dart';

class Newspage extends StatefulWidget {
  Newspage({Key? key}) : super(key: key);
  
  @override
  State<Newspage> createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  Future<List<Getnews>> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if(response.statusCode == 200){
      var getPostsData = json.decode(response.body) as List;
      var listPosts = getPostsData.map((i) => Getnews.fromJson(i)).toList();
      return listPosts;
    } else{
      throw Exception('ERROR Load POSTS');
    }
  }
}

late Future<List<Getnews>> futurePosts;

@override
void initState(){
  futurePosts = fetchPosts();
}