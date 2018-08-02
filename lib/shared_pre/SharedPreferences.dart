import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SharedPreferences Demo',
      home: new SharedPreDemo(),
    );
  }
}

class SharedPreDemo extends StatefulWidget {
  SharedPreDemo({Key key}) : super(key: key);

  @override
  SharedPreDemoState createState() => new SharedPreDemoState();
}

class SharedPreDemoState extends State<SharedPreDemo> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<int> _counter;

  Future<Null> _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;

    setState(() {
      _counter = prefs.setInt("counter", counter).then((bool success) {
        return counter;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _counter = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt('counter') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("SharedPreferences Demo"),
      ),
      body: new Center(
          child: new FutureBuilder<int>(
              future: _counter,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  default:
                    if (snapshot.hasError)
                      return new Text('Error: ${snapshot.error}');
                    else
                      return new Text(
                        'Button tapped ${snapshot.data} time${ snapshot.data == 1 ? '' : 's' }.\n\n'
                            'This should persist across restarts.',
                      );
                }
              })),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}