import 'package:flutter/material.dart';
import 'package:banner_view/banner_view.dart';
import 'dart:ui';

class BannerViewTest extends StatelessWidget {
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
  BannerViewTState createState() => BannerViewTState();
}

class BannerViewTState extends State<BannerViewT> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        alignment: Alignment.center,
        height: 200.0,
        child:new BannerView([
          Image.asset('data_repo/img/banner1.jpg',
            width: window.physicalSize.width,
            fit: BoxFit.fill,),
          Image.asset('data_repo/img/banner2.jpg',
            width: window.physicalSize.width,
            fit: BoxFit.fill,),
          Image.asset('data_repo/img/banner3.jpg',
            width: window.physicalSize.width,
            fit: BoxFit.fill,),
          Image.asset('data_repo/img/banner4.jpg',
            width: window.physicalSize.width,
            fit: BoxFit.fill,),
          Image.asset('data_repo/img/banner1.jpg',
            width: window.physicalSize.width,
            fit: BoxFit.fill,),
        ])
      ),
    );
  }
}
