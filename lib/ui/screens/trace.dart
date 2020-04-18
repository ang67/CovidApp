import 'package:flutter/material.dart';

class TracePage extends StatefulWidget {
  @override
  _TracePageState createState() => _TracePageState();
}

class _TracePageState extends State<TracePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
         
         Center(child: CircularProgressIndicator()),
      
      );
      
  }
}