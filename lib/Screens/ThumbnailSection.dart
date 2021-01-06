import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ThumbnailSection extends StatefulWidget {
  @override
  _ThumbnailSectionState createState() => _ThumbnailSectionState();
}

class _ThumbnailSectionState extends State<ThumbnailSection> {
  List<Post> topStories = [
    Post(
        imageUrl: "images/Avengers.png",
        time: 2,
        title:
            "Marvells Avenger Quiz",
        story:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    Post(
      imageUrl: "images/hhh.jpg",
      story:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 1,
      title: "WWE Quiz",
    ),
    Post(
        imageUrl: "images/kane.jpg",
        story:
            " Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        time: 3,
        title: "Cricket Quiz"),
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
                width: MediaQuery.of(context).size.width * 0.36,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(topStories[i].imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.9)
                      ],
                      begin: Alignment.topCenter,
                      stops: [0.5, 1],
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        topStories[i].title,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Schyler'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearPercentIndicator(
                        width: 105.0,
                        lineHeight: 8.0,
                        percent: 0.8,
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff943920),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "8.9/10",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Schyler'),
                      ),
                    ],
                  ),
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
  final int time;
  final String imageUrl;
  final String story;

  Post({this.imageUrl, this.title, this.time, this.story});
}
