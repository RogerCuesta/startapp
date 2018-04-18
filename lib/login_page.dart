import 'package:flutter/material.dart';
import 'dart:async';


class NewPage extends StatelessWidget{
  final String title;
NewPage(this.title);
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.grey[900] ,
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("Roger"),
      ),
    );
  }
}