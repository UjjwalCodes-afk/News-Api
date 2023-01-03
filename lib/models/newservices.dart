import 'dart:convert';
import 'dart:core';
import 'package:news/models/newsmodel.dart';

import 'newsmodel.dart';
import 'package:http/http.dart' as http;
class NewServices{
  

  Future<List<Articles>> getapi()async{
    final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=68461d63b95a42deb86bca827c6fd76f'));
    if(response.statusCode==200){
      Map<String,dynamic> json = jsonDecode(response.body.toString());
      List<dynamic> body = json['articles'];

      List<Articles> articles = body.map((dynamic item) => Articles.fromJson(item)).toList();
      return articles;
    }else{
      throw Exception('Cant occured');
      
    }
  }
}