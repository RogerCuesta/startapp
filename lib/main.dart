import 'package:flutter/material.dart';
import 'package:start_app/pages/intro_screen.dart';
import 'package:start_app/pages/splash_screen.dart';
import 'login.dart';

var routes = <String, WidgetBuilder>{
  "/login": (BuildContext context) => MyApp(),
  "/intro": (BuildContext context) => IntroScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));