import 'package:flutter/material.dart';

class SymptDetails extends StatefulWidget {
  @override
  _SymptDetailsState createState() => _SymptDetailsState();
}

class _SymptDetailsState extends State<SymptDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptômes'),
      ),
      body: Container(
        child: Center(child: Text('Details')),
      ),
    );
  }
}