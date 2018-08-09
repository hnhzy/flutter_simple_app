import 'package:flutter/material.dart';
import 'package:banner_view/banner_view.dart';
import 'dart:ui';

class BVTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("BannerTest"),
        ),
        body: new BannerViewT(),
      ),
    );
  }
}

class BannerViewT extends StatefulWidget {
  @override
  _BvState createState() => _BvState();
}

class _BvState extends State<BannerViewT> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          alignment: Alignment.center,
          height: 200.0,
          child: new BannerView([
            Image.asset(
              'data_repo/img/banner1.jpg',
              width: window.physicalSize.width,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'data_repo/img/banner2.jpg',
              width: window.physicalSize.width,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'data_repo/img/banner3.jpg',
              width: window.physicalSize.width,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'data_repo/img/banner4.jpg',
              width: window.physicalSize.width,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'data_repo/img/banner1.jpg',
              width: window.physicalSize.width,
              fit: BoxFit.fill,
            ),
          ])),
    );
  }
}
