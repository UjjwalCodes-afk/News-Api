

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news/NewsDetails.dart';
import 'package:news/customizelist.dart';
import 'package:news/models/Appurl.dart';
import 'package:news/models/newservices.dart';
import 'package:news/models/newsmodel.dart';
import 'package:news/settings.dart';
import 'package:shimmer/shimmer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  NewServices newServices = NewServices();

  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text('News Api'),
        ),
        backgroundColor: Colors.lightBlue.shade900,
      ),
      bottomNavigationBar: GNav(
        tabBackgroundGradient: LinearGradient(
          colors: [Colors.lightBlue, Colors.blue.shade900],
        ),
        tabs: [
          GButton(
            icon: CupertinoIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: CupertinoIcons.search,
            text: 'Search',
          ),
          GButton(
            icon: CupertinoIcons.heart_fill,
            text: 'Likes',
          ),
          GButton(
            icon: CupertinoIcons.settings,
            text: 'Settings',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Setting()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: newServices.getapi(),
                builder: (context,AsyncSnapshot<List<Articles>> snapshot){
                  if(!snapshot.hasData){
                    return SpinKitFadingCircle(
                      color: Colors.red,
                      duration: Duration(seconds: 3),
                      
                      // child: Column(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: Card(
                      //         child: ListTile(
                      //                 leading: Container(height: 10, width: 90, color: Colors.white,),
                      //                 title: Container(height: 10, width: 90, color: Colors.white,),
                      //                 subtitle: Container(height: 10, width: 90, color: Colors.white,),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    );
                  }else{
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 5,
                                color: Colors.lightBlue,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> NewsDetial(title: snapshot.data![index].title.toString() ,author:snapshot.data![index].author.toString() ,description: snapshot.data![index].description.toString(), content: snapshot.data![index].content.toString() , publishedAt: snapshot.data![index].publishedAt.toString(),)));
                                  },
                                  child: ListTile(
                                    title: Text(snapshot.data![index].title.toString()),
                                    subtitle: Text(snapshot.data![index].description.toString()),
                                    trailing: Text(snapshot.data![index].author.toString()),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }

                },
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
