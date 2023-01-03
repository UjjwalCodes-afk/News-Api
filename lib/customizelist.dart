import 'package:flutter/material.dart';
import 'package:news/models/newsmodel.dart';

Widget CustomTile(Articles articles){
  return Container(
    margin: EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(articles.urlToImage.toString()),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            
          ),
          child: Text(articles.title.toString()),
        ),
      ],
    ),
  );
}