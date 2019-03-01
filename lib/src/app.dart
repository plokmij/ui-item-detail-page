import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/material.dart';
import 'screens/detail_page.dart';

class App extends StatelessWidget{
  Widget build(BuildContext context){
    FlutterStatusbarcolor.setNavigationBarColor(Color(0xffff4c5d));
    return MaterialApp(
      home:ItemDetail(),
      theme: ThemeData(
        primaryColor: Color(0xffff4c5d),
        backgroundColor: Color(0xffff4c5d),
      ),
    );
  }
}