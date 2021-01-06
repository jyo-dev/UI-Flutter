import 'package:flutter/material.dart';

class QuizListSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      height: 40.0,
                      width: width/4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Rectangle.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: FittedBox(fit:BoxFit.scaleDown,child: Center(child: Text('Live Quiz',style: TextStyle(color: Colors.white,fontFamily: 'Schyler',fontSize: 11),))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 40.0,
                    width: width/4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Rectangle.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: FittedBox(fit:BoxFit.scaleDown,child: Center(child: Text('Normal Quiz',style: TextStyle(color: Colors.white,fontFamily: 'Schyler',fontSize: 11),))),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 40.0,
                    width: width/4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Rectangle.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: FittedBox(fit:BoxFit.scaleDown,child: Center(child: Text('QPL',style: TextStyle(color: Colors.white,fontFamily: 'Schyler',fontSize: 11),))),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20,width: width,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: width/4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Rectangle.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: FittedBox(fit:BoxFit.scaleDown,child: Center(child: Text('QFG',style: TextStyle(color: Colors.white,fontFamily: 'Schyler',fontSize: 11),))),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: width/4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Rectangle.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: FittedBox(fit:BoxFit.scaleDown,child: Center(child: Text('TOURNAMENT',style: TextStyle(color: Colors.white,fontFamily: 'Schyler',fontSize: 11),))),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: width/4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Rectangle.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: FittedBox(fit:BoxFit.scaleDown,child: Center(child: Text('ANY OTHER',style: TextStyle(color: Colors.white,fontFamily: 'Schyler',fontSize: 11),))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
