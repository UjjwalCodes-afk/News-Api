import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/cheems.png'),
                    )
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Card(
                elevation: 2,
                color: CupertinoColors.opaqueSeparator,
                child: ListTile(
                  leading: Icon(CupertinoIcons.profile_circled, size: 30, color: Colors.lightBlue.shade900,),
                  horizontalTitleGap: 90,
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.lightBlue.shade900),),
                  ),
              
                  
                ),
              ),

              Card(
                elevation: 2,
                color: CupertinoColors.opaqueSeparator,
                child: ListTile(
                  leading: Icon(CupertinoIcons.lock, size: 30, color: Colors.lightBlue.shade900,),
                  horizontalTitleGap: 90,
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Privacy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.lightBlue.shade900),),
                  ),
              
                  
                ),
              ),

              Card(
                elevation: 2,
                color: CupertinoColors.opaqueSeparator,
                child: ListTile(
                  leading: Icon(CupertinoIcons.shield_fill, size: 30, color: Colors.lightBlue.shade900,),
                  horizontalTitleGap: 90,
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Security', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.lightBlue.shade900),),
                  ),
              
                  
                ),
              ),

              Card(
                elevation: 2,
                color: CupertinoColors.opaqueSeparator,
                child: ListTile(
                  leading: Icon(CupertinoIcons.pencil_circle_fill, size: 30, color: Colors.lightBlue.shade900,),
                  horizontalTitleGap: 90,
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.lightBlue.shade900),),
                  ),
              
                  
                ),
              ),

              Card(
                elevation: 2,
                color: CupertinoColors.opaqueSeparator,
                child: ListTile(
                  leading: Icon(Icons.feedback, size: 30, color: Colors.lightBlue.shade900,),
                  horizontalTitleGap: 90,
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Feedback', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.lightBlue.shade900),),
                  ),
              
                  
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}