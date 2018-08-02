import 'package:flutter/material.dart';
import 'package:banner/banner.dart';
import 'dart:ui';

class BannerTest extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("BannerTest"),
        ),
        body: new BannerT(),
      ),
    );
  }
}

class BannerT extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BannerTState();
}

class BannerTState extends State<BannerT> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new BannerView(
        data: [
          'data_repo/img/banner1.jpg',
          'data_repo/img/banner2.jpg',
          'data_repo/img/banner3.jpg',
          'data_repo/img/banner4.jpg'
        ],
        buildShowView: (index, data) {
          print(data);
          return new Image.asset(
            data,
            width: window.physicalSize.width,
            fit: BoxFit.fill,
          );
        },
        onBannerClickListener: (index, data) {
          print(index);
        },
      ),
    );
  }
}
