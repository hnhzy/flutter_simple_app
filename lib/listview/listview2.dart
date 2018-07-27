import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter base UI Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter base UI Widget'),
        ),
        body: ListView(//不通过builder方法
          children: <Widget>[
            //add code
            new Text('Hello World', style: new TextStyle(fontSize: 32.0)),
            new Image.asset("data_repo/img/social/linkedin.png", width: 50.0,height: 50.0, fit: BoxFit.contain),
            new Icon(Icons.star, color: Colors.red[500])
          ],
        ),
      ),
    );
  }
}