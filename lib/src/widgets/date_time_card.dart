import 'package:flutter/material.dart';

class DateTimeCard extends StatelessWidget {
  final TextStyle header = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: Color(0xff214899),
  );
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          buildDateText(),
          Divider(
            color: Colors.grey,
            height: 40.0,
          ),
          buildTimeText(),
        ],
      ),
    );
  }

  Widget buildDateText() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text("Date"),
        ),
        Container(
          child: Text(
            "Today",
            style: header,
          ),
        ),
      ],
    );
  }

  Widget buildTimeText() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text("Start Time"),
              ),
              Container(
                child: Text(
                  "Not Selected",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text("End Time"),
            ),
            Container(
              child: Text(
                "Not Selected",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
