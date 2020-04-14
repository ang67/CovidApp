import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List imgList = [
    'assets/carousel_1.jpg',
    'assets/carousel_2.jpg',
    'assets/carousel_3.jpg',
    'assets/carousel_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          SizedBox(height: 5),
          CarouselSlider(
            viewportFraction: 1.0,
            height: MediaQuery.of(context).size.height / 3.5,
            initialPage: 0,
            enlargeCenterPage: true,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 2000),
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            items: imgList.map((imgUrl) {
              return Builder(builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Image(
                      image: AssetImage(imgUrl),
                      fit: BoxFit.fill,
                    ));
              });
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            'Dernières Informations ',
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: Colors.black),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 100,
            child: Text("blablablabla"),
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  padding: EdgeInsets.only(left: 25,top: 10, right: 20, bottom: 20),
                  onPressed: () {
                    Navigator.pushNamed(context, '/stats');
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.timeline, color: Colors.white),
                      SizedBox(height: 15),
                      Text('Statistiques',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  padding: EdgeInsets.only(left: 20,top: 10, right: 25, bottom: 20),
                  onPressed: () {
                    Navigator.pushNamed(context, '/aboutCorona');
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital, color: Colors.white),
                      SizedBox(height: 15),
                      Text('Bon à savoir',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}

class StatsPage {
}
