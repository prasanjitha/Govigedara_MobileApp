
import 'package:e_shop/Counters/cartitemcounter.dart';
import 'package:e_shop/HomePage/products.dart';
import 'package:e_shop/Store/cart.dart';
import 'package:e_shop/Widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:provider/provider.dart';
import 'Horizontallist.dart';
class HomePage extends StatelessWidget {
int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/HomePage/c1.jpg"),
          AssetImage("images/HomePage/c4.jpg"),
          AssetImage("images/HomePage/c3.jpg"),
          AssetImage("images/HomePage/c5.jpg"),
          AssetImage("images/HomePage/c6.jpg"),
          AssetImage("images/HomePage/c7.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(

        flexibleSpace: Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.pink,Colors.limeAccent],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp,
              )
          ),
        ),
        title: Text("Govigedara",
          style: TextStyle(color: Colors.white,fontSize: 55.0,fontFamily: "Signatra"),),
        centerTitle: true,
        actions: [
          PopupOptionMenu(),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.pink,
                  ),
                  onPressed: () {
                    Route route =
                    MaterialPageRoute(builder: (c) => CartPage());
                    Navigator.pushReplacement(context, route);
                  }),
              Positioned(
                child: Stack(
                  children: [
                    Icon(
                      Icons.brightness_1,
                      size: 20.0,
                      color: Colors.green,
                    ),
                    Positioned(
                        top: 3.0,
                        bottom: 4.0,
                        left: 4.0,
                        child: Consumer<CartItemCounter>(
                          builder: (context, counter, _) {
                            return Text(
                              counter.count.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            );
                          },
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
        drawer: MyDrawer(),

        body: Container(

          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.green,Colors.limeAccent],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp,
              )
          ),
          child: new ListView(

              children: [
                image_carousel,
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("Categories",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)),
                Horizontallst(),
                Divider(height: 4.0, color: Colors.green,),
                Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: new Text("Recent Products",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold))),
                Container(
                  height: 320.0,
                  child: Products(),
                )
              ]

          ),

        ),
    );

  }

}
enum MenuOption {Send, Draft, Discard}
class PopupOptionMenu extends StatelessWidget {
  const PopupOptionMenu({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context){
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(child: Text("Login to Seller"),
          value: MenuOption.Send,),

          PopupMenuItem(child: Text("Login to Deliver"),
          value: MenuOption.Send,),
        ];

      },

    );
  }
}
