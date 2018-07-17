import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key); //接收从上一个页面传来的值
  final String title;

  @override
  State<StatefulWidget> createState() {
    return new _SecondPageState(title: title);
  }
}

class _SecondPageState extends State<SecondPage> {
  _SecondPageState({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("第二页 $title"),
      ),
    ); //第二个页面的布局很简单，只有最上面的导航栏
  }
}
