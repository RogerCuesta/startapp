import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.red,),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context)=> new NewPage("Perfil"),
    });
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
        const ListTile(
          leading: const Icon(Icons.album),
          title: const Text('The Enchanted Nightingale'),
          subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
        ),
        new ButtonTheme.bar( // make buttons use the appropriate styles for cards
          child: new ButtonBar(
            children: <Widget>[
              new FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              new FlatButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
            ],
          ),
        ),
      ],
    ),
  )
);
 }

}
