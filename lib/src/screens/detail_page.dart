import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Icon(Icons.arrow_back),
              expandedHeight:
                  (MediaQuery.of(context).size.height / 2) * (3 / 4),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: imageContainer(),
              ),
            ),
          ];
        },
        body: Center(
          child: Text("Body und ketto"),
        ),
      ),
    );
  }

  Widget imageContainer() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue,
      ),
    );
  }
}
