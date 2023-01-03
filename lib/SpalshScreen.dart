import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:news/mainscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(duration: Duration(seconds: 3), vsync: this)..repeat();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), 
    ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                child: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Center(child: Image(image: AssetImage('images/icon.png') , fit: BoxFit.cover,)),
                  
                  ),
                ),
                animation: _controller,
                builder: (context,Widget?child){
                  return Transform.rotate(
                    angle: _controller.value*2.0*math.pi,
                    child: child,
                  );
                },
              ),
              SizedBox(height: 40,),
              // Text('News Api', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('News Api', textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
              
                ],
                
              ),

            ],
          ),
        ),
      )
    );
  }
}