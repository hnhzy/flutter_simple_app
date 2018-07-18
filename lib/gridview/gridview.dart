import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  final MyGridView myGridView = new MyGridView();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text("GridView Example"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}

class MyGridView {
  Card getStructuredGridCell(name, image) {
    return new Card(
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Image(image: new AssetImage('data_repo/img/'+image)),
            new Center(
              child: new Text(name),
            )
          ],
        ));
  }

  GridView build() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "social/facebook.png"),
        getStructuredGridCell("Twitter", "social/twitter.png"),
        getStructuredGridCell("Instagram", "social/instagram.png"),
        getStructuredGridCell("Linkedin", "social/linkedin.png"),
        getStructuredGridCell("Gooogle Plus", "social/google_plus.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    );
  }
}
