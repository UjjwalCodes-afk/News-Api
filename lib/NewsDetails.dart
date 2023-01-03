import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news/models/newsmodel.dart';
import 'package:news/customizelist.dart';

class NewsDetial extends StatefulWidget {

  String title;
  String author;
  String description;
  String content;
  String publishedAt;
  NewsDetial({
    required this.title,
    required this.author,
    required this.description,
    required this.content,
    required this.publishedAt,
  });
  @override
  State<NewsDetial> createState() => _NewsDetialState();
}

class _NewsDetialState extends State<NewsDetial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text('News Api'),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        
      ),

      body: SafeArea(
        child: Expanded(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.lightBlue,
            child: Column(
              children: [
                Card(
                  color: Colors.lightBlue.shade900,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [Colors.amberAccent, Colors.white, Colors.black38]
                          )
                        ),
                      child: Text(widget.author.toString(),
                      textAlign: TextAlign.center,
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.title.toString(), style: TextStyle(fontSize: 28, color: Colors.white),),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.description.toString(), style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
          
                
                  ),
                ),
              ],
            ),
          ),
        ),
      )
     

    );
  }
}