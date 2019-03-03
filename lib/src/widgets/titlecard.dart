import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String name;
  final String address;

  TitleCard({this.name, this.address});

  final TextStyle header = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  final TextStyle subtitle = TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
  );

  final Color iconColor = Color(0xffcad8e4);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          buildNameRow(),
          Divider(
            color: Colors.grey,
            height: 25.0,
          ),
          buildFeaturesRow(),
        ],
      ),
    );
  }

  Widget buildNameRow() {
    return Row(
      children: <Widget>[
        /*Container(
          padding: EdgeInsets.all(20.0),
          child: Center(child: Text("Logo")),
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            color: Color(0xffff4c5d),
          ),
        ),*/
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
          color: iconColor,
        ),
      ],
    );
  }

  Widget buildFeaturesRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
        Container(
          padding: EdgeInsets.only(right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
        Container(
          padding: EdgeInsets.only(right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
        Container(
          padding: EdgeInsets.only(right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
        Container(
          padding: EdgeInsets.only(right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ],
    );
  }
}
