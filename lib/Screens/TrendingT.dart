import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TrendingT extends StatefulWidget {
  @override
  _TrendingTState createState() => _TrendingTState();
}

class _TrendingTState extends State<TrendingT> {
  List<EditorChoice> editorArticles = [
    EditorChoice(
      editorImage: "Players in Pool:",
      editorname: "231/360",
      imageurl: "Price Money",
      clr: Color(0xffFF5666),
      story:
          "500",
      title: "Angular Js",
    ),
    EditorChoice(
      editorImage: "",
      editorname: "",
      imageurl: "",
      clr: Colors.yellow,
      story:
          "",
      title: "",
    ),
    EditorChoice(
      editorImage: "",
      editorname: "",
      imageurl: "",
      clr: Color(0xff19EDC1),
      story:
          "",
      title: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.34,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Swiper(
        itemCount: editorArticles.length,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                    color: editorArticles[index].clr,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height * 0.24,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(20.0),
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xff19EDC1),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      editorArticles[index].title,
                                      style: TextStyle(
                                          fontSize: 30.0, color: Colors.white,fontFamily: 'Schyler'),
                                    ),
                                  ),
                                ),
                              ])
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(editorArticles[index].editorImage,style: TextStyle(
                              fontSize: 10.0, color: Colors.white,fontFamily: 'Schyler'),),
                                ),
                                Text(editorArticles[index].editorname,style: TextStyle(
                                    fontSize: 10.0, color: Colors.white,fontFamily: 'Schyler'),)
                              ],),
                              Column(children: [
                                Text(editorArticles[index].imageurl,style: TextStyle(
                                    fontSize: 10.0, color: Colors.white,fontFamily: 'Schyler'),),
                                Text(editorArticles[index].story,style: TextStyle(
                                    fontSize: 10.0, color: Colors.white,fontFamily: 'Schyler'),)
                              ],)
                            ],
                          )
                        ],
                      )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class EditorChoice {
  final String imageurl;
  final String editorname;
  final String editorImage;
  final String title;
  final String story;
  final Color clr;

  EditorChoice(
      {this.imageurl,
      this.editorname,
      this.editorImage,
      this.title,
      this.story,this.clr});
}
