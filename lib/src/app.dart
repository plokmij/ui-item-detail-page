//import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/material.dart';
import 'screens/detail_page.dart';
import 'blocs/date_time_provider.dart';
import 'styles/styles.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setNavigationBarColor(Color(0xffff4c5d));
    return DateTimeProvider(
      child: MaterialApp(
        home: ItemDetail(),
        theme: ThemeData(
          primaryColor: Colours.primaryColor,
          backgroundColor: Colours.themeGrey,
        ),
      ),
    );
  }
}