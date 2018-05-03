import 'package:flutter/material.dart';
import 'home.dart';

/*void main() => runApp(new MyApp());*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      routes: <String, WidgetBuilder> {
      '/home': (BuildContext context) => new Principal(),
      '/login': (BuildContext context) => new LoginPage(),
    },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      backgroundColor: Color.lerp(Colors.redAccent, Colors.white, 0.1),      
      body: new SingleChildScrollView( 
        child: new Container(
        child: new Column(        
        children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(top: 30.0),
        ),
        new Image(
          image: new AssetImage("assets/imgLogo.png"),
        ),
        new Center(            
          child: new Column(                     
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.center,  
           children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(top: 120.0),
            ),
            new Container(
              padding: const EdgeInsets.all(25.0),
              child: new Column(
                children: <Widget>[
            new TextFormField(              
              decoration: new InputDecoration(
                labelText: "User",                                
              ),
              keyboardType: TextInputType.emailAddress,           
            ),
            new Padding(
            padding: const EdgeInsets.only(top: 15.0),
            ),  
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,              
              keyboardType: TextInputType.text,
            ),
                ],
              ),
            ),          

            new Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),              
            new MaterialButton(
              height: 50.0,
              minWidth: 150.0,
              color: Colors.black,
              splashColor: Colors.black,
              child: new Text("Login"),
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context,'/home',ModalRoute.withName('/login'));
                  }
                )
              ],
            ),
          ),
          ], 
        ), 
        ),
      ),       
    );
  }
}