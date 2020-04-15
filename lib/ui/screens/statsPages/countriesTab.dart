import 'package:flutter/material.dart';

class CountriesTabPage extends StatefulWidget {
  @override
  _CountriesTabPageState createState() => _CountriesTabPageState();
}

class _CountriesTabPageState extends State<CountriesTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Icon(Icons.flag, size: 64.0, color: Colors.green)),
    );
  }
}