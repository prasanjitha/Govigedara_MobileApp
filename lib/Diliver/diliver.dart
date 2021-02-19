import 'package:e_shop/Admin/uploadItems.dart';
import 'package:e_shop/HomePage/mainHome.dart';
import 'package:e_shop/Store/Search.dart';
import 'package:flutter/material.dart';

import 'diliver1.dart';
class diliverPage extends StatefulWidget {
  @override
  _diliverPageState createState() => _diliverPageState();
}

class _diliverPageState extends State<diliverPage> {
  int _currentIndex=0;
  final List<Widget>_children=[
    divivers(),
    HomePage(),
    UploadPage(),
    SearchProduct(),
  ];
  void onTapped(int index){
    setState(() {
      _currentIndex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
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
        title: Text("Diliver Details",
          style: TextStyle(color: Colors.white,fontSize: 55.0,fontFamily: "Signatra"),),
        centerTitle: true,
      ),*/
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.drive_eta),
            title: Text("Diliver"),
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
            title: Text("Buyer"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.supervisor_account),
            title: Text("Seller"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            title: Text("Search"),
            backgroundColor: Colors.blue,
          ),

        ],


      ),
    );

  }
}

