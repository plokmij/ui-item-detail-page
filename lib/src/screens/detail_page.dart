import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/titlecard.dart';
import '../widgets/date_time_card.dart';
import '../widgets/size_selector.dart';
import '../widgets/price_card.dart';
import '../widgets/book_button.dart';

class ItemDetail extends StatelessWidget {
  final widgets = [
    TitleCard(
      name: "Product Name",
      address: "Small Decription  ",
    ),
    DateTimeCard(),
    SizeSelector(),
    PriceCard(),
  ];
  Widget build(BuildContext context) {
    //final double statusBarHeight = MediaQuery.of(context).padding.top;    
    return Scaffold(
      primary: true,
      appBar: EmptyAppBar(),
      bottomNavigationBar: BookButton(),
      backgroundColor: Color(0xffcad8e4),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          print(innerBoxIsScrolled);
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color(0xffff4c5d),
              leading: Icon(Icons.arrow_back),
              centerTitle: true,
              title: innerBoxIsScrolled?Text("Product Name"):Text(" ") ,
              actions: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffcad8e4),
                  ),
                ),
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
          child: ListView.builder(
            padding: EdgeInsets.all(0.0),
            itemCount: widgets.length,
            itemBuilder: (context, int index) {
              return widgets[index];
            },
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
        color: Color(0xffff4c5d),
      ),
      child: Image.network("https://e00-marca.uecdn.es/assets/multimedia/imagenes/2019/02/28/15513389901606.jpg",fit: BoxFit.cover,colorBlendMode: BlendMode.darken,),
    );
  }
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget build(BuildContext context){
    return Container();
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0.0,0.0);
}