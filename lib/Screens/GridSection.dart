import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          GridAll(imgload: 'images/abcd.png',),
          GridAll(imgload: 'images/beatclock.png',),
          GridAll(imgload: 'images/tenessay.png',)
        ],),
        Row(children: [
          GridAll(imgload: 'images/fillin.png',),
          GridAll(imgload: 'images/spellfun.png',),
          GridAll(imgload: 'images/truefalse.png',)
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          GridTwo(imgload2: 'images/freequiz.png',),
          GridTwo(imgload2: 'images/videoaudio.png',),
        ],),
      ],
    );
  }
}

class GridAll extends StatelessWidget {
  final String imgload;

  const GridAll({Key key, this.imgload}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
        color: Color(0xffE5E2DF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(40.0),
          height: 150.0,
          width: 30.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: new AssetImage(imgload),
                fit: BoxFit.scaleDown,
              )
          ),
        ),
      ),
    );
  }
}

class GridTwo extends StatelessWidget {

  final String imgload2;

  const GridTwo({Key key, this.imgload2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
        color: Color(0xffE5E2DF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(40.0),
          height: 150.0,
          width: 30.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: new AssetImage(imgload2),
                fit: BoxFit.scaleDown,
              )
          ),
        ),
      ),
    );
  }
}
