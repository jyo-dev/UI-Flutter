import 'package:flutter/material.dart';

class CurvedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      decoration: BoxDecoration(
        color: Color(0xff064992),
      ),
      child: Row(
        children: [
          Container(
            height: 150.0,
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
                  color: Color(0xffA07E66),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'John',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      'Doe',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      'Cash won:',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      '2000',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                  ],
                )),
          ),
          Container(
            height: 180.0,
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
                  color: Color(0xffFBB03B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'John',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      'Doe',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      'Cash won:',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      '4800',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                  ],
                )),
          ),
          Container(
            height: 150.0,
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
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'John',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      'Doe',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      'Cash won:',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                    Text(
                      '2400',
                      style:
                      TextStyle(color: Colors.white, fontFamily: 'Schyler'),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
