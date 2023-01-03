import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/SpalshScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.lightBlue.shade900,
        scaffoldBackgroundColor: Colors.lightBlue.shade900,
        
      ),
      home: SplashScreen(),
    );
  }
}

