import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  MyDialogState createState() => new MyDialogState();
}

class MyDialogState extends State<MyDialog> {
  // Generate MyDialog
  AlertDialog MyDialog = new AlertDialog(
      content: new Text(
    "Hello World!",
    style: new TextStyle(fontSize: 30.0),
  ));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Using Alert MyDialog"),
        ),
        body: new Container(
          child: new Center(
            child: new RaisedButton(
                child: new Text("Hit to alert!"),
                // On press of the button
                onPressed: () {
                  // Show MyDialog
                  showDialog(context: context, child: MyDialog);
                }),
          ),
        ));
  }
}
