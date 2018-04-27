import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    /*Navigator.pushNamed(context, "/login");*/
    Navigator.pushNamedAndRemoveUntil(context,'/login',ModalRoute.withName('/'));
  }

  static void goToIntro(BuildContext context) {
    //Navigator.pushNamed(context, "/intro");
    Navigator.pushNamedAndRemoveUntil(context,'/intro',ModalRoute.withName('/'));
  }
}
