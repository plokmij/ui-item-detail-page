import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/titlecard.dart';
import '../widgets/date_time_card.dart';
import '../widgets/size_selector.dart';
import '../widgets/price_card.dart';
import '../widgets/book_button.dart';
import '../widgets/image_slider.dart';
import '../styles/styles.dart';

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

  final List<String> photos = [
    "https://e00-marca.uecdn.es/assets/multimedia/imagenes/2018/12/25/15457730278274.jpg",
    "http://outsideoftheboot.com/wp-content/uploads/2015/07/Jose-Gimenez-2015-Atletico.png",
    "https://e00-marca.uecdn.es/assets/multimedia/imagenes/2017/12/03/15122952947600.jpg",
    "http://as01.epimg.net/futbol/imagenes/2017/06/04/primera/1496570307_204106_1496570423_noticia_normal.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201805/Diego-Costa.png",
    "https://shakarasquare.com/wp-content/uploads/2017/07/Saul-Niguez.jpg",
    "https://cdn-s3.si.com/s3fs-public/styles/marquee_large_2x/public/2018/09/28/koke-atletico-madrid-spain.jpg"
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
          //print(innerBoxIsScrolled);
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colours.primaryColor,
              leading: Icon(Icons.arrow_back),
              centerTitle: true,
              title: innerBoxIsScrolled?Text("Product Name"):Text(" ") ,
              actions: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colours.themeGrey,
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
        color: Colours.primaryColor,
      ),
      child: ImageCarousel(photos: photos,),
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