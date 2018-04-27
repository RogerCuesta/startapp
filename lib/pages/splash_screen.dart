import 'dart:async';

import 'package:flutter/material.dart';
import 'package:start_app/utils/flutkart.dart';
import 'package:start_app/utils/my_navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => MyNavigator.goToIntro(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(color: Colors.white),
            child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 110.0),
                      ),
                      new Image(
                        image: new AssetImage("assets/imgLogo.png"),
                        width: 400.0 
                      ),
                    ],
                  ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  new Padding(
                        padding: const EdgeInsets.only(top: 350.0),
                      ),
                    new CircularProgressIndicator(
                      backgroundColor: Colors.black,
                    ),
                    new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                    new Text(
                      Flutkart.store,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    )
                  ],
                ),              
            ],
          ),
          ),          
        ],
      ),
    );
  }
}
