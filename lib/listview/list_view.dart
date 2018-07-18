import 'package:flutter/material.dart';
import 'package:flutter_simple_app/listview/contact_page.dart';

class MylistView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Using Listview"),
      ),
      body: new ContactPage(),
    ),
  );
}
}
