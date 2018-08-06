import 'package:flutter/material.dart';
import 'package:banner/banner.dart';
import 'dart:ui';

class BannerTest extends StatelessWidget {
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
  BannerTState createState() => BannerTState();
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
        //data 传入list<*>
        //onBannerClickListener(index,itemData) 点击事件
        // delayTime 秒 延迟多少秒进入下一页
        //  scrollTime 毫秒 滑动至下页需要秒数
        // height 高度
        // buildShowView(index,itemData) 返回一个用于展示的widget
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
        height: 200.0,
      ),
    );
  }
}
