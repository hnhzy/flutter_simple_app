import 'package:flutter/material.dart';
import 'package:flutter_walkthrough/flutter_walkthrough.dart';
import 'package:flutter_walkthrough/walkthrough.dart';

/**
 * https://github.com/iampawan/Flutter-Walkthrough
 */

class TestScreen extends StatelessWidget {

  /*here we have a list of walkthroughs which we want to have,
  each walkthrough have a title,content and an icon.
  */
  final List<Walkthrough> list = [
    Walkthrough(
      title: "Title 1",
      content: "Content 1",
      imageIcon: Icons.restaurant_menu,
    ),
    Walkthrough(
      title: "Title 2",
      content: "Content 2",
      imageIcon: Icons.search,
    ),
    Walkthrough(
      title: "Title 3",
      content: "Content 3",
      imageIcon: Icons.shopping_cart,
    ),
    Walkthrough(
      title: "Title 4",
      content: "Content 4",
      imageIcon: Icons.verified_user,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //here we need to pass the list and the route for the next page to be opened after this.
    return new IntroScreen(
      list,
      new MaterialPageRoute(builder: (context) => new TestScreen()),
    );
  }
}