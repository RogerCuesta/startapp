import 'package:start_app/utils/flutkart.dart';
import 'package:flutter/material.dart';
import 'package:start_app/utils/flutkart.dart';
import 'package:start_app/utils/my_navigator.dart';
import 'package:start_app/widgets/walkthrough.dart';
import 'package:start_app/login.dart';
class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() {
    return IntroScreenState();
    
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
      routes: <String, WidgetBuilder> {
      '/login': (BuildContext context) => new LoginPage(),
    };
    return Container(
      color: Color(0xFFEEEEEE),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                Walkthrough(
                  title: Flutkart.wt1,
                  content: Flutkart.wc1,
                  imageIcon: Icons.mobile_screen_share,
                ),
                Walkthrough(
                  title: Flutkart.wt2,
                  content: Flutkart.wc2,
                  imageIcon: Icons.search,
                ),
                Walkthrough(
                  title: Flutkart.wt3,
                  content: Flutkart.wc3,
                  imageIcon: Icons.chat,
                ),
                Walkthrough(
                  title: Flutkart.wt4,
                  content: Flutkart.wc4,
                  imageIcon: Icons.people,
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new FlatButton(
                  child: new Text(lastPage ? "" : Flutkart.skip,
                      style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () =>
                      lastPage ? null : MyNavigator.goToHome(context),
                ),
                new FlatButton(
                  child:new Text(lastPage ? Flutkart.gotIt : Flutkart.next,
                      style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? MyNavigator.goToHome(context)
                      : controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
