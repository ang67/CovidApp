import 'package:flutter/material.dart';

class AboutCoronaPage extends StatefulWidget {
  @override
  _AboutCoronaPageState createState() => _AboutCoronaPageState();
}

class _AboutCoronaPageState extends State<AboutCoronaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bon à savoir'),
        ),
        body: Center(
          child: Container(
            child: Text('Bon à savoir'),
          ),
        ));
  }
}
