import 'package:flutter/material.dart';

class RowAndColunm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    return new MaterialApp(
      title: 'Flutter base UI Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter base UI Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            //add code
            titleSection,
            titleSection,
            titleSection
          ],
        ),
      ),
    );
  }
}