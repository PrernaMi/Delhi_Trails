import 'package:flutter/material.dart';
import 'package:tourist_app/historial_all_page/qutub_minar.dart';
import 'package:tourist_app/splash_screen.dart';

import 'historical_sites.dart';
import 'home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Splash_Screen(),
    );
  }
}