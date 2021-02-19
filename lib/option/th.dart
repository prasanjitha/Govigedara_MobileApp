import 'package:e_shop/Admin/uploadItems.dart';
import 'package:e_shop/Diliver/diliver.dart';
import 'package:e_shop/HomePage/mainHome.dart';
import 'package:e_shop/Store/storehome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.greenAccent,


      body: Center(

        child: Dialog(

        backgroundColor: Colors.blue[100],
        child: Container(
        width: 100,
        height: 300,
        color: Colors.white,
        child: Center(
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Choose option",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 20.0,

            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UploadPage()));
              },
              child: Text("I am seller",style: TextStyle(
                fontSize: 20.0
              ),),
            ),
            Divider(
              height: 10.0,
              color: Colors.pink,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>HomePage()));
              },
              child: Text("I am buyer",style: TextStyle(
                  fontSize: 20.0
              )),
            ),
            Divider(
              height: 10.0,
              color: Colors.pink,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => diliverPage()));
              },
              child: Text("I am diliver",style: TextStyle(
                  fontSize: 20.0
              )),
            ),
            Divider(
              height: 1.0,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    ),
    ),

    )
        ),

    );
  }
}
