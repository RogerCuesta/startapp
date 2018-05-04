import 'package:flutter/material.dart';
import 'package:start_app/login.dart';
import 'package:start_app/project.dart';
import 'package:start_app/project_data.dart';

class Principal extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MainPage',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new LoginPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
      },
    );
  }
}

class CustomCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.network(
              'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
          new Padding(
              padding: new EdgeInsets.all(7.0),
              child: new Row(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Icon(Icons.thumb_up),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Text(
                      'Like',
                      style: new TextStyle(fontSize: 18.0),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Icon(Icons.comment),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Text('Comments',
                        style: new TextStyle(fontSize: 18.0)),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<CustomCard> cards = List.generate(20, (i) => new CustomCard());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("StartApp"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Roger Cuesta"),
              accountEmail: new Text("rcuesta2015m3@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("R"),
              ),
            ),
            new ListTile(
              title: new Text("Perfil"),
              trailing: new Icon(Icons.person),
              onTap: () => Navigator.of(context).pushNamed("/profile"),
            ),
            new ListTile(
              title: new Text("Log Out"),
              trailing: new Icon(Icons.power),
              onTap: () => Navigator.of(context).pushReplacementNamed("/login"),
            ),
            new Divider(color: Colors.black),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new ListView(
          children: cards,
        ),
      ),
    );
  }
}
