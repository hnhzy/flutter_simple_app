import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('TransformWidget'),),
      body:
      new Container(
        color: Colors.black,
        child: new Transform(//A widget that applies a transformation before painting its child.
          alignment: Alignment.topRight,
          transform: new Matrix4.skewY(0.3)..rotateZ(30.0),
          child: new Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFFE8581C),
            child: const Text('Apartment for rent!'),
          ),
        ),
      )
      ,
    );
  }

}