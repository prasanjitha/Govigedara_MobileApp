import 'package:e_shop/Store/storehome.dart';
import 'package:flutter/material.dart';
class Horizontallst extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onLongPress: () {
    Route route =
    MaterialPageRoute(builder: (c) => StoreHome());
    Navigator.pushReplacement(context, route);
    },
            child: category(

              image_location: 'images/HomePage/c4.jpg',
              image_caption: "Vegitable",
            ),
          ),
          InkWell(
            onLongPress: () {
              },
            child: category(
              image_location: 'images/cats/m3.jpg',
              image_caption: "Fruits ",
            ),
          ),
          InkWell(
            onTap: (){},
            child: category(
              image_location: 'images/cats/m9.jpg',
              image_caption: "Sesonal ",
            ),
          ),
          category(
            image_location: 'images/cats/m9.jpg',
            image_caption: "Sesonal ",
          ),
          category(
            image_location: 'images/cats/m9.jpg',
            image_caption: "Seeds",
          ),
        ],

      ),

    );
  }
}
class category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 200,

            child: ListTile(
                title: Image.asset(
                  image_location,
                  width: 100,
                  height: 100,
                ),
                subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(image_caption,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
                )),
          )),
    );
  }
}