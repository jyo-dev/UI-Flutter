import 'package:flutter/material.dart';

class NewthumbSection extends StatefulWidget {
  @override
  _NewthumbSectionState createState() => _NewthumbSectionState();
}

class _NewthumbSectionState extends State<NewthumbSection> {
  List<Post> topStories = [
    Post(
        imageUrl: "images/sports.png",
        cl: Colors.yellow,
        title: "Sports",
    ),
    Post(
      cl: Color(0xff2E3992),
      imageUrl: "images/history.png",
      title: "History",
    ),
    Post(
        cl: Color(0xff2E3992),
        imageUrl: "images/science.png",
        title: "Science"),
    Post(
        cl: Color(0xff2E3992),
        imageUrl: "images/movies.png",
        title: "Movies"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.24,
      child: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.24,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: topStories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) => GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                  color: Color(0xffE5E2DF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(40.0),
                      width: 30.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: new AssetImage(topStories[i].imageUrl),
                            fit: BoxFit.contain,
                          )),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 32.0,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                        color:topStories[i].cl,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        topStories[i].title,
                        style: TextStyle(
                            fontFamily: 'Schyler', color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Post {
  final String title;
  final String imageUrl;
  final Color cl;

  Post({this.imageUrl, this.title,this.cl});
}
