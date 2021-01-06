import 'package:flutter/material.dart';
import 'package:uitest/Screens/AppbarHere.dart';
import 'package:uitest/Screens/ThumbnailSection.dart';

import 'Thumb.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    child: SingleChildScrollView(
                        child: Column(children: [
                          SizedBox(height: 200.0,),
                          NewthumbSection(),
                          SizedBox(height: 40.0,),
                          Text(
                            'SELECT THE GAME MODE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Schyler'),
                          ),
                          SizedBox(height: 40.0,),
                          Container(
                            margin: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width * 0.70,
                            decoration: BoxDecoration(
                              color: Color(0xff42D3F1),
                              borderRadius: BorderRadius.all(Radius.elliptical(90,70)),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width * 0.70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.elliptical(90,70)),
                              ),
                              child: Container(
                                height: 50.0,
                                width: 30.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('SOLO',style: TextStyle(
                                        color: Color(0xffC4C4C4),
                                        fontSize: 15,
                                        fontFamily: 'Schyler'),),
                                    Text('VERSUS',style: TextStyle(
                                        color: Color(0xffC4C4C4),
                                        fontSize: 15,
                                        fontFamily: 'Schyler'),),
                                    Text('TABLE',style: TextStyle(
                                        color: Color(0xffC4C4C4),
                                        fontSize: 15,
                                        fontFamily: 'Schyler'),),
                                  ],),
                              ),
                            ),)


                        ],)),
                  ),
                  Container(
                    height: 180.0,
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                      borderRadius: new BorderRadius.vertical(
                          bottom: new Radius.elliptical(
                              MediaQuery.of(context).size.width, 100.0)),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.arrow_left,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffB4B4B4)),
                          ),
                          Container(
                            height: 120.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/abcdflat.png'),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffB4B4B4)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90.0,
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                      borderRadius: new BorderRadius.vertical(
                          bottom: new Radius.elliptical(
                              MediaQuery.of(context).size.width, 100.0)),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff07136B),
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
    );
  }
}
