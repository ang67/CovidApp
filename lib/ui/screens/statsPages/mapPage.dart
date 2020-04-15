import 'package:flutter/material.dart';

class MapTabPage extends StatefulWidget {
  @override
  _MapTabPageState createState() => _MapTabPageState();
}

class _MapTabPageState extends State<MapTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Icon(Icons.map, size: 64.0, color: Colors.blue)),
    );
  }
}