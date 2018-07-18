import 'package:flutter/material.dart';

class Material_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        // Title
        title: "Simple Material App",
        // Home
        home: new Scaffold(
          // Appbar
          appBar: new AppBar(
            // Title
            title: new Text("Simple Material App"),
          ),
          // Body
          body: new Container(
            // Center the content
            child: new Center(
              // Add Text
              child: new Text("Hello World!"),
            ),
          ),
        ));
  }
}
