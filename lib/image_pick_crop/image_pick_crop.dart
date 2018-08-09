//import 'dart:io';
//
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_image_pick_crop/flutter_image_pick_crop.dart';
//
////https://pub.dartlang.org/packages/flutter_image_pick_crop#-example-tab-
//class ImagePickCrop extends StatefulWidget {
//  @override
//  _MyAppState createState() => new _MyAppState();
//}
//
//class _MyAppState extends State<ImagePickCrop> {
//  String _platformMessage = 'Unknown';
//  String _camera = 'fromCameraCropImage';
//  String _gallery = 'fromGalleryCropImage';
//  File imageFile;
//
//  @override
//  initState() {
//    super.initState();
//  }
//
//  initGalleryPickUp() async {
//    /*setState(() {
//      imageFile = null;
//      _platformVersion = 'Unknown';
//    });*/
//    File file;
//    String result;
//
//    try {
//      result = await FlutterImagePickCrop.pickAndCropImage(_gallery);
//    } on PlatformException catch (e) {
//      result = e.message;
//      print(e.message);
//    }
//
//    if (!mounted) return;
//
//    setState(() {
//      imageFile = new File(result);
//      _platformMessage = result;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Plugin Image Crop'),
//        ),
//        body: new Container(
//          padding: const EdgeInsets.all(8.0),
//          child: new Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              imageFile != null
//                  ? new Image.file(
//                imageFile,
//                height: 400.0,
//              )
//                  : new Icon(
//                Icons.image,
//                size: 200.0,
//                color: Theme.of(context).primaryColor,
//              ),
//              new Center(
//                child: new Text('Running on: $_platformMessage\n'),
//              ),
//              new RaisedButton.icon(
//                  onPressed: initGalleryPickUp,
//                  icon: new Icon(Icons.image),
//                  label: new Text("Open Camera/Gallery")),
//              new Padding(padding: new EdgeInsets.only(left: 5.0, right: 5.0))
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}