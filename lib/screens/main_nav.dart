import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gods_eye/screens/screen_1.dart';
import 'package:gods_eye/screens/screen_2.dart';
import 'package:gods_eye/screens/screen_3.dart';
import 'package:gods_eye/utils/constants.dart';

import 'home_screen/home_screen.dart';

class MainNav extends StatefulWidget {
  static String id = 'main_nav';

  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> with TickerProviderStateMixin {
  int _screen = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            key: _bottomNavigationKey,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                      color: (_screen == 0) ? kPrimaryColor : Colors.grey),
                  title: Text("Home",
                      style: TextStyle(
                          color:
                              (_screen == 0) ? kPrimaryColor : Colors.grey))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                      color: (_screen == 1) ? kPrimaryColor : Colors.grey),
                  title: Text("Search",
                      style: TextStyle(
                          color:
                              (_screen == 1) ? kPrimaryColor : Colors.grey))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border,
                      color: (_screen == 2) ? kPrimaryColor : Colors.grey),
                  title: Text(
                    "Bookmark",
                    style: TextStyle(
                        color: (_screen == 2) ? kPrimaryColor : Colors.grey),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline,
                      color: (_screen == 3) ? kPrimaryColor : Colors.grey),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: (_screen == 3) ? kPrimaryColor : Colors.grey),
                  ))
            ],
            onTap: (currentIndex) {
              setState(() {
                _screen = currentIndex;
              });
            },
          ),
          body: _screenOptions.elementAt(_screen),
        ),
      ),
    );
  }
}
