import 'package:flutter/material.dart';

class AppbarHere extends StatefulWidget {
  @override
  _AppbarHereState createState() => _AppbarHereState();
}

class _AppbarHereState extends State<AppbarHere> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tab.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 40.0,
          width: 70.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/profile.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 50.0,
          width: 20.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/toggle.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0),
          height: 50.0,
          width: 90.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/score.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Rs 2454',
                style: TextStyle(color: Colors.blueAccent,fontFamily: 'Schyler',fontSize: 10.0),
              )),
        ),
      ],
    );
  }
}
