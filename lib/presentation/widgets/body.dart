import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashboard_app/json.dart';
import 'package:dashboard_app/presentation/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 8,
          child: Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            elevation: 10,
            child: CarouselSlider(
              options: CarouselOptions(),
              items: newsList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Text(i['text']),
                            Expanded(
                              child: Image.asset(
                                i['url'],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Card(
                    margin: EdgeInsets.all(10),
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    elevation: 10,
                    child: VideoWidget(
                      videoList: JsonData.mediaJSON['categories'][0]['videos'],
                    ),
                  )),
              Flexible(
                flex: 1,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  elevation: 10,
                  child: Placeholder(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static final newsList = [
    {'text': 'News First Text', 'url': 'assets/images/news/notice1.jpg'},
    {'text': 'News second text', 'url': 'assets/images/news/notice2.jpg'},
    {'text': 'news third text', 'url': 'assets/images/news/notice3.jpg'},
    {'text': 'news forth text', 'url': 'assets/images/news/notice4.jpg'},
  ];
}
