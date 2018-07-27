import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StackWidget'),
      ),
      body: new Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
            width: 20.0,
          ),
          stack,
        ],
      ),
    );
  }


  var stack = new Stack(//相当于帧布局
    alignment: const Alignment(0.6, 0.6),
    children: [
      new CircleAvatar(
        backgroundImage: new AssetImage('data_repo/img/social/twitter.png'),
        radius: 100.0,
      ),
      new Container(
        decoration: new BoxDecoration(
          color: Colors.black45,
        ),
        child: new Text(
          'Mia B',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}