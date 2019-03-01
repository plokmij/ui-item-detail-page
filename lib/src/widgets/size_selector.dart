import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: buildRow(),
    );
  }

  Widget buildRow() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text('Select Size'),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1.0, 2.0),
                        )
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xff214899),
                    ),
                    child: Text(
                      "30\"",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1.0, 2.0),
                        )
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xffcad8e4),
                    ),
                    child: Text(
                      "32\"",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
