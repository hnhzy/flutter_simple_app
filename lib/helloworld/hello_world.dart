import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Simple',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello World"),
        ),
        body: new Center(
          child: new Text("Hello World"),
        ),
      ),
    );
  }
}