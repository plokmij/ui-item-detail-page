import 'package:flutter/material.dart';

class DateTimeP extends StatelessWidget {
  Widget build(BuildContext context) {
    var divHeight = MediaQuery.of(context).size.height / 8;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: divHeight,
            color: Color(0x00ff4c5d),
          ),
          Text('Hell'),
        ],
      ),
    );
  }
}
