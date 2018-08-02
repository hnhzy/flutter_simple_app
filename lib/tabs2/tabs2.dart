import 'package:flutter/material.dart';
import 'package:flutter_simple_app/tabs2/first.dart';
import 'package:flutter_simple_app/tabs2/second.dart';
import 'package:flutter_simple_app/tabs2/third.dart';

class MyTabs2 extends StatefulWidget {
  @override
  MyTabs2State createState() => new MyTabs2State();
}

// SingleTickerProviderStateMixin is used for animation
class MyTabs2State extends State<MyTabs2> with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
//        new Tab(
//          // set icon to the tab
//          icon: new Icon(Icons.favorite),
//        ),
        new Tab(
//          icon: new Icon(Icons.adb),
//        text: "全部",
          child: new Column(
            children: <Widget>[
              new Text("gdsagdsag"),
              new Text("gdsagdsag"),
            ],
          ),
        ),
        new Tab(
//          icon: new Icon(Icons.airport_shuttle),
//          text: "代理人",
          child: new Column(
            children: <Widget>[
              new Text("gdsagdsag"),
              new Text("gdsagdsag"),
            ],
          ),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  /*
   *-------------------- Setup the page by setting up tabs in the body ------------------*
   */
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
        appBar: new AppBar(
          // Title
            title: new Text("Using Tabs"),
            // Set the background color of the App Bar
            centerTitle: true,
            backgroundColor: Colors.blue,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[new First(), new Second(), new Third()]));
  }
}
