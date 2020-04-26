import 'package:flutter/material.dart';
import 'package:wsm/ProfitScreen.dart';

import 'historyScreen.dart';
import 'home.dart';
import 'leaderboard.dart';
import 'questionScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/": (context) => home(),
        "/home": (context) => home(),
        "/questionScreen": (context) => questionScreen(),
        "/leaderboard": (context) => leaderboard(),
        "/profitScreen": (context) => profitScreen(),
        "/historyScreen": (context) => historyScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
