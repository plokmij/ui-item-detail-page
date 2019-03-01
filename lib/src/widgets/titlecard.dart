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

  Color iconColor = Colors.grey;

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        children: <Widget>[
          buildNameRow(),
          Divider(
            color: Colors.grey,
            height: 20.0,
          ),
          buildFeaturesRow(),
        ],
      ),
    );
  }

  Widget buildNameRow() {
    return Row(
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
    );
  }

  Widget buildFeaturesRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.add_a_photo,
                  size: 32.0,
                  color: iconColor,
                ),
                Text("Feature")
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.add_a_photo,
                  size: 32.0,
                  color: iconColor,
                ),
                Text("Feature")
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.add_a_photo,
                  size: 32.0,
                  color: iconColor,
                ),
                Text("Feature")
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.add_a_photo,
                  size: 32.0,
                  color: iconColor,
                ),
                Text("Feature")
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.add_a_photo,
                  size: 32.0,
                  color: iconColor,
                ),
                Text("Feature")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
