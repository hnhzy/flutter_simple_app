import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: new Container(
          constraints: new BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
          ),
          padding: const EdgeInsets.all(8.0),
          color: Colors.teal.shade700,
          alignment: Alignment.center,
          child: new Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
          foregroundDecoration: new BoxDecoration(
            image: new DecorationImage(//An image for a box decoration.
              image: new NetworkImage('https://goss.veer.com/creative/vcg/veer/800water/veer-161548038.jpg'),
              centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
            ),
          ),
          transform: new Matrix4.rotationZ(0.1),
        ),
      );
  }

}
