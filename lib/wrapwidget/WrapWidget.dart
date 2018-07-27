import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WrapWidget'),
      ),
      body:
      new Wrap(//相当于flowlayout
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue.shade900, child: new Text('AH')),
            label: new Text('Hamilton'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue.shade900, child: new Text('ML')),
            label: new Text('Lafayette'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue.shade900, child: new Text('HM')),
            label: new Text('Mulligan'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue.shade900, child: new Text('JL')),
            label: new Text('Laurens'),
          ),
        ],
      ),
    );
  }

}