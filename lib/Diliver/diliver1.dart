import 'package:flutter/material.dart';
class divivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    title: Text("Dilver details",
    style: TextStyle(color: Colors.white,fontSize: 55.0,fontFamily: "Signatra"),),
    centerTitle: true,
        ),
      body: Center(
        child: Text("Not design to yet ",style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}
