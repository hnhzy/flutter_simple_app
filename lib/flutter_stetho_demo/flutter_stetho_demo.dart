//import 'dart:io';
//
//import 'package:flutter/material.dart';
//import 'package:flutter_stetho/flutter_stetho.dart';
//import 'package:http/http.dart' as http;
//
//void main() {
//
//
////  runApp();
//}
//
//class FlutterStethoExample extends StatelessWidget {
//  final http.Client client;
//
//  FlutterStethoExample({Key key, this.client}) : super(key: key);
//
//  fetchImage() {
//    client.get('https://flutter.io/images/flutter-mark-square-100.png');
//  }
//
//  fetchJson() {
//    client.get('https://jsonplaceholder.typicode.com/posts/1');
//  }
//
//  fetchError() {
//    client.get('https://jsonplaceholder.typicode.com/postadsass/1');
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    HttpOverrides.global = new StethoHttpOverrides();
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Plugin example app'),
//        ),
//        body: new Center(
//          child: new Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              new Padding(
//                padding: new EdgeInsets.all(16.0),
//                child: new RaisedButton(
//                  onPressed: fetchJson,
//                  child: new Text("Fetch json"),
//                ),
//              ),
//              new Padding(
//                padding: new EdgeInsets.all(16.0),
//                child: new RaisedButton(
//                  onPressed: fetchImage,
//                  child: new Text("Fetch image"),
//                ),
//              ),
//              new Padding(
//                padding: new EdgeInsets.all(16.0),
//                child: new RaisedButton(
//                  onPressed: fetchError,
//                  child: new Text("Fetch with Error"),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}