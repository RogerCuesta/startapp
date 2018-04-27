import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



class Principal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MainPage',
      theme: new ThemeData(primarySwatch: Colors.red,),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar( centerTitle: true,
      title: new Text("StartApp"),
     ),
     drawer: new Drawer(
       child: new ListView(
         children: <Widget>[  
           new UserAccountsDrawerHeader(
             accountName: new Text("Roger Cuesta"),
             accountEmail: new Text("rcuesta2015m3@gmail.com"),
             currentAccountPicture: new CircleAvatar(
               backgroundColor: Colors.white ,
               child: new Text("R"),

             ),
           ), 
            new ListTile(
            title: new Text("Perfil" ),
            trailing: new Icon(Icons.person),
            onTap: () => Navigator.of(context).pushNamed("/a"),
         ),
         new Divider(color: Colors.black ),
            new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
         ),
         ],
       ),
     ),
body: new Card(
    child: new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
      new SizedBox(
          width: 800.0, height: 200.0,
          child: new Image.asset("assets/Project-Scope-Management-Cover.jpg"),
      ),
      new Padding(
          padding: new EdgeInsets.only(
              left: 10.0, top: 10.0, bottom: 5.0
          ),
          child: new Text(
              "Bitcoin",
              maxLines: 1
          )
      ),
        new ButtonTheme.bar( // make buttons use the appropriate styles for cards
          child: new ButtonBar(
            children: <Widget>[
              new Icon(Icons.star, color: Colors.green[500]
              ),
              new Text(
                "1"
              ),
            new Padding(
            padding: new EdgeInsets.only(
              left: 20.0
            ),
            child:new FlatButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ), 
            )
            ],
          ),
        ),
      ],
    ),
  )
);
 }

}