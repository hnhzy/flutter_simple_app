import 'package:flutter/material.dart';
import 'events.dart';

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
  String evStr;

  @override
  void initState() {
    super.initState();
    print("gsgds");
    eventBus.on<MyEventA>().listen((MyEventA event) {
      print("gsgds");
      evStr=event.text;
      print("gsgds"+event.text);
    });
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("第二页 $title"),
      ),
      body: new Center(
        child: new Text("gsgds"),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
