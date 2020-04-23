import 'package:flutter/material.dart';

class PreventDetails extends StatefulWidget {
  @override
  _PreventDetailsState createState() => _PreventDetailsState();
}

class _PreventDetailsState extends State<PreventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prévention & Traitement'),
      ),
      body: Container(
        child: Center(child: Text('Details')),
      ),
    );
  }
}