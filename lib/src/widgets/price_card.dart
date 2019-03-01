import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      margin: EdgeInsets.only(bottom: 5.0),
      child: buildContent(),
    );
  }

  Widget buildContent() {
    return Row(
      children: <Widget>[
        Container(
          child: Text(
            "Amount Payable",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                "₹5000",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
