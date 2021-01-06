import 'package:flutter/material.dart';

class FinalLayout extends StatelessWidget {
  final Color r;
  final String img;

  const FinalLayout({Key key, this.r, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 20.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: new AssetImage(img),
            fit: BoxFit.scaleDown,
          )
      ),
    );
  }
}
