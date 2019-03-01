import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String name;
  final String address;

  TitleCard({this.name, this.address});

  TextStyle header = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  TextStyle subtitle = TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
  );

  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Center(child: Text("Logo")),
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.left,
                style: header,
              ),
              Text(
                address,
                textAlign: TextAlign.left,
                style: subtitle,
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.location_on,
            size: 48.0,
          ),
        ],
      ),
    );
  }
}
