import 'package:flutter/material.dart';

class DiagnosticPage extends StatefulWidget {
  @override
  _DiagnosticPageState createState() => _DiagnosticPageState();
}

class _DiagnosticPageState extends State<DiagnosticPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Icon(Icons.favorite,
              size: 64.0, color: Theme.of(context).accentColor)),
    );
  }
}
