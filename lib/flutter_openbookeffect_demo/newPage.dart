import 'package:flutter/material.dart';
import 'SV.dart';

class NewPage extends StatefulWidget {
  @override
  NewPageState createState() => new NewPageState();

  NewPage(Key key) : super(key: key);
}

class NewPageState extends State<NewPage> {
  bool isHide = false;
  void hide(bool hide) {
    setState(() {
      isHide = hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SizedBox.expand(
        child: new Stack(
          children: <Widget>[
            new SizedBox.expand(
              child: new Image(
                image: new AssetImage('data_repo/img/parchment.png'),
                fit: BoxFit.cover,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: new Center(
                child: new Text('第${SV.index}页面123'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
