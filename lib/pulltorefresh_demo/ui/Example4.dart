import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Example4 extends StatefulWidget {
  @override
  _Example4State createState() => new _Example4State();
}

class _Example4State extends State<Example4> with TickerProviderStateMixin {
  List<Widget> data = [];
  RefreshController _refreshController;
  void _getDatas() {
    for (int i = 0; i < 18; i++) {
      data.add(new Container(
        child: new Text('Data $i'),
        height: 50.0,
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _getDatas();
    _refreshController = new RefreshController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    new ListView.builder(
//      itemExtent: 100.0,
//      itemCount: data.length,
//
//      itemBuilder: (context, index) {
//        return data[index];
//      },
//    )
    return new RefreshIndicator(
        child: new SmartRefresher(
            enablePullDown: false,
            enablePullUp: true,
            enableOverScroll: false,
            footerBuilder: (context, mode) {
              return new ClassicIndicator(mode: mode);
            },
            footerConfig: new LoadConfig(triggerDistance: 30.0),
            controller: _refreshController,
            onRefresh: (up) {
              new Future.delayed(const Duration(milliseconds: 1000))
                  .then((val) {
                _refreshController.sendBack(false, RefreshStatus.idle);
              });
            },
            onOffsetChange: (bool up,double offset){
              print("$up:$offset");
            },
            child: new CustomScrollView(
              slivers: [new SliverList(delegate: new SliverChildListDelegate(data,addRepaintBoundaries: true))],
            )

            ),
        onRefresh: () {
          return new Future.delayed(const Duration(milliseconds: 300));
        });
  }
}
