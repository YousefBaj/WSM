import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wsm/GamesScreen.dart';
import 'package:wsm/Profile.dart';
import 'package:wsm/my_flutter_app_icons.dart';

import 'gameAPI.dart';
import 'historyScreen.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  gameAPI game = new gameAPI();
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    GamesScreen(),
    historyScreen(),
    profile(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    game.postTest();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void moveToSecondPage() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            title: Text(
              '',
              style: TextStyle(fontSize: 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.component_4___2,
              size: 30,
            ),
            title: Text(
              '',
              style: TextStyle(fontSize: 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 40,
            ),
            title: Text(
              '',
              style: TextStyle(fontSize: 0),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff7E46A0),
        unselectedItemColor: Color(0xffD6D6D6),
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.transparent,
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

//card widget

}
