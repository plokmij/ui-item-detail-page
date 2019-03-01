import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/titlecard.dart';

class ItemDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          print(innerBoxIsScrolled);
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: Icon(Icons.arrow_back),
              actions: <Widget>[
                Icon(Icons.favorite)
              ],
              expandedHeight:
                  (MediaQuery.of(context).size.height / 2) * (3 / 4),
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: imageContainer(),
              ),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            TitleCard(
              name: "Samfan",
              address: "HH Ha Goo Gl",
            )
          ],
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
