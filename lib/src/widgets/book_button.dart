import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 8;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      height: height,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xff214899),
          //borderRadius: BorderRadius.all(Radius.circular(30.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 0.2,
              offset: Offset(1.0, 3.0),
            )
          ],
        ),
        child: Center(
          child: Text(
            "BOOK NOW",
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
