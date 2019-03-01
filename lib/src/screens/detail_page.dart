import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/titlecard.dart';
import '../widgets/date_time_selector.dart';

class ItemDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcad8e4),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          print(innerBoxIsScrolled);
          return <Widget>[
            SliverAppBar(
              title: Text('Achantr'),
              //backgroundColor: Color(0x00ffff),
              leading: Icon(Icons.arrow_back),
              actions: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Color(0xffcad8e4),
                )
              ],
              expandedHeight:
                  (MediaQuery.of(context).size.height / 2) * (3 / 4),
              pinned: true,
              forceElevated: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: imageContainer(),
              ),
            ),
          ];
        },
        body: Container(
          height: 400.0,
          child: ListView(
            children: <Widget>[
              TitleCard(
                name: "Samfan",
                address: "HH Ha Goo Gl",
              ),
              DateTimeSelector(),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageContainer() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xff214899),
      ),
    );
  }
}
