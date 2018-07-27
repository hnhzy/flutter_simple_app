import 'package:flutter/material.dart';

class SingleChildScrollViews extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(title: new Text('SingleChildScrollView'),),
        body:
        new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: new ConstrainedBox(
                constraints: new BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {

                      },
                      child: new Container(
                        color: Colors.yellow,
                        child: new Text('TURN LIGHTS ON'),
                      ),
                    ),
                    new IconButton(
                      icon: new Icon(Icons.volume_up),
                      tooltip: 'Increase volume by 10%',
                      onPressed: () {  },
                    ),
                    new RichText(
                      text: new TextSpan(
                        text: 'Hello ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          new TextSpan(text: 'bold', style: new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                    new RotatedBox(//旋转子视图
                      quarterTurns: 1,//The number of clockwise quarter turns the child should be rotated.
                      child: const Text('Hello World!'),
                    ),
                    new Container(
                      // A fixed-height child.
                      color: Colors.yellow,
                      height: 120.0,
                    ),
                    new Container(
                      // Another fixed-height child.
                      color: Colors.green,
                      height: 120.0,
                    ),
                    new Container(
                      // Another fixed-height child.
                      color: Colors.red,
                      height: 120.0,
                    ),
                    new Container(
                      // Another fixed-height child.
                      color: Colors.blue,
                      height: 120.0,
                    ),
                    new Container(
                      // Another fixed-height child.
                      color: Colors.yellow,
                      height: 120.0,
                    ),
                    new Container(
                      // Another fixed-height child.
                      color: Colors.grey,
                      height: 120.0,
                    ),
                  ],
                ),
              ),
            );
          },
        )
        ,
      );
  }

}