import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class RecentlyPlayedUI extends StatefulWidget {

  @override
  _RecentlyPlayedUIState createState() => _RecentlyPlayedUIState();
}

class _RecentlyPlayedUIState extends State<RecentlyPlayedUI> {

  List<EditorChoice> editorArticles = [
    EditorChoice(
      editorImage: "assets/images/e4.png",
      editorname: "Robert Pattison",
      imageurl: "assets/images/ms.png",
      story:
      "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      title: "Only Indian actor to buy land on moon.",
    ),
    EditorChoice(
      editorImage: "assets/images/e3.png",
      editorname: "Robert Pattison",
      imageurl: "assets/images/ms.png",
      story:
      "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      title: "Shahraj's mission comes to live at the biggest mosque",
    ),
    EditorChoice(
      editorImage: "assets/images/e2.png",
      editorname: "Robert Pattison",
      imageurl: "assets/images/ms.png",
      story:
      "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      title: "Shahraj's mission comes to live at the biggest mosque",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.44,
      width: MediaQuery.of(context).size.width*0.80,
      padding: EdgeInsets.all(10),
      child: Swiper(
        itemCount: editorArticles.length,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color(0xffFBB03B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: MediaQuery.of(context).size.height * 0.44,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Container(
                          padding: EdgeInsets.all(40.0),
                          height: 150.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: new AssetImage('images/abcd.png'),
                                fit: BoxFit.scaleDown,
                              )
                          ),),
                    ),
                  ),
                ),
              ],
            ),
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

  EditorChoice(
      {this.imageurl,
        this.editorname,
        this.editorImage,
        this.title,
        this.story});
}
