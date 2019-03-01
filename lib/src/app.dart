import 'package:flutter/material.dart';
import 'screens/detail_page.dart';

class App extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home:ItemDetail(),
      theme: ThemeData(
        backgroundColor: Colors.grey,
      ),
    );
  }
}