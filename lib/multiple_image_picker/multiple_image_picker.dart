import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:multi_image_picker/multi_image_picker.dart';


//https://pub.dartlang.org/packages/multi_image_picker#-example-tab-
class MultiImagePick extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MultiImagePick> {
  List<File> images;
  String _error;

  @override
  void initState() {
    super.initState();
  }

  Future<void> pickImages() async {
    setState(() {
      images = null;
    });

    List resultList;
    String error;

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 3,
      );
    } on PlatformException catch (e) {
      error = e.message;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      if (error == null) _error = 'No Error Dectected';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Container(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              images == null
                  ? new Container(
                height: 300.0,
                width: 400.0,
                child: new Icon(
                  Icons.image,
                  size: 250.0,
                  color: Theme.of(context).primaryColor,
                ),
              )
                  : new SizedBox(
                height: 300.0,
                width: 400.0,
                child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) =>
                  new Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: new Image.file(
                      images[index],
                    ),
                  ),
                  itemCount: images.length,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text('Error Dectected: $_error'),
              ),
              new RaisedButton.icon(
                  onPressed: pickImages,
                  icon: new Icon(Icons.image),
                  label: new Text("Pick-Up Images")),
            ],
          ),
        ),
      ),
    );
  }
}