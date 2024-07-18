import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tourist_app/home_page.dart';

class Splash_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3,),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return HomePage();
      }));
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255,54, 232, 234),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Container(
              height: 170,
                width: 170,
                child: Image.asset("assets/icons/splash_1.png")
            ),
            Text("DelhiTrails",style: TextStyle(fontFamily: "SplashFont",fontSize: 30,color: Colors.white),),
            SizedBox(height: 200,),
            Text("Do more with DelhiTrails",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
          ],
        ),
      )
    );
  }

}