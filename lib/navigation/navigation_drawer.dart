import 'package:flutter/material.dart';
import 'package:flutter_simple_app/navigation/screens/account.dart';
import 'package:flutter_simple_app/navigation/screens/home.dart';
import 'package:flutter_simple_app/navigation/screens/settings.dart';


class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomeScreen(), // route for home is '/' implicitly
       routes: <String, WidgetBuilder>{
          // define the routes
          SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
          AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
        }
    );
  }
}