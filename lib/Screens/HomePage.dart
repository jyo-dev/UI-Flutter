import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uitest/Screens/AppbarHere.dart';
import 'package:uitest/Screens/CurvedTab.dart';
import 'package:uitest/Screens/FinalLayout.dart';
import 'package:uitest/Screens/GridSection.dart';
import 'package:uitest/Screens/QuizListSection.dart';
import 'package:uitest/Screens/RecentlyPlayedUI.dart';
import 'package:uitest/Screens/ThumbnailSection.dart';
import 'package:uitest/Screens/TrendingT.dart';

import 'Screens/CurvedTab.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Background.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 30.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 90.0,
                                  ),
                                  ThumbnailSection(),
                                  SizedBox(
                                    height: 10.0,
                                    width: width,
                                  ),
                                  QuizListSection(),
                                  SizedBox(
                                    height: 20.0,
                                    width: width,
                                  ),
                                  GridSection(),
                                  SizedBox(
                                    height: 20.0,
                                    width: width,
                                  ),
                                ],
                              ),
                            ),
                            ClipPath(
                              clipper: WaveClipperTwo(reverse: true),
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 50.0,
                                    ),
                                    Text(
                                      'Recently Played',
                                      style: TextStyle(
                                          color: Color(0xff0E65C6),
                                          fontSize: 31,
                                          fontFamily: 'Schyler'),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                      width: width,
                                    ),
                                    RecentlyPlayedUI(),
                                    Text(
                                      'Trending Tournament',
                                      style: TextStyle(
                                          color: Color(0xff0E65C6),
                                          fontSize: 31,
                                          fontFamily: 'Schyler'),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                      width: width,
                                    ),
                                    TrendingT(),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color(0xffF3F3F3),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    'Leader Board',
                                    style: TextStyle(
                                        color: Color(0xff0E65C6),
                                        fontSize: 31,
                                        fontFamily: 'Schyler'),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'This Month',
                                          style: TextStyle(
                                              color: Color(0xff0E65C6),
                                              fontSize: 20,
                                              fontFamily: 'Schyler'),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'This Week',
                                          style: TextStyle(
                                              color: Color(0xff0E65C6),
                                              fontSize: 20,
                                              fontFamily: 'Schyler'),
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xff064992),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Today',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Schyler'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  CurvedTab(),
                                ],
                              ),
                            ),
                            Container(
                              height: 5.0,
                              width: double.infinity,
                              color: Colors.red,
                            ),
                            Container(
                              color: Color(0xff064992),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: FinalLayout(
                                      img: 'images/icon1.png',
                                    ),
                                  ),
                                  Expanded(
                                      child: FinalLayout(
                                        img: 'images/icon2.png',
                                      )),
                                  Expanded(
                                      child: FinalLayout(
                                        img: 'images/icon3org.png',
                                      )),
                                  Expanded(
                                    child: FinalLayout(
                                      img: 'images/icon4.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: FinalLayout(
                                      r: Color(0xff0A69D0),
                                      img: 'images/icon5.png',
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height:90.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [new BoxShadow(blurRadius: 40.0)],
                        borderRadius: new BorderRadius.vertical(
                            bottom: new Radius.elliptical(
                                MediaQuery.of(context).size.width, 100.0)),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0xff07136B),
                        boxShadow: [new BoxShadow(blurRadius: 40.0)],
                        borderRadius: new BorderRadius.vertical(
                            bottom: new Radius.elliptical(
                                MediaQuery.of(context).size.width, 100.0)),
                      ),
                      child: AppbarHere(),
                    ),
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

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
