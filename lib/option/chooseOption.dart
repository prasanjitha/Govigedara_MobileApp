import 'package:e_shop/HomePage/mainHome.dart';
import 'package:flutter/material.dart';

class bnm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: Dialog(
                      backgroundColor: Colors.blue[100],
                      child: Container(
                        width: 100,
                        height: 300,
                        color: Colors.blue[100],
                        child: Center(
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
                                height: 10.0,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                },
                                child: Text("I am seller"),
                              ),
                              Divider(
                                height: 1.0,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                },
                                child: Text("I am buyer"),
                              ),
                              Divider(
                                height: 1.0,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                },
                                child: Text("I am diliver"),
                              ),
                              Divider(
                                height: 1.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));
              },
              child: Text("click"),
            )
          ],
        ),
      ),
    );
  }
}
