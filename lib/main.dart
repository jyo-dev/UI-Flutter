import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uitest/ScreenTWO/SecondPage.dart';
import 'package:uitest/Screens/AppbarHere.dart';
import 'package:uitest/Screens/HomePage.dart';

import 'Screens/CurvedTab.dart';
import 'Screens/FinalLayout.dart';
import 'Screens/GridSection.dart';
import 'Screens/QuizListSection.dart';
import 'Screens/RecentlyPlayedUI.dart';
import 'Screens/ThumbnailSection.dart';
import 'Screens/TrendingT.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondPage(),
      },
    );
  }
}
