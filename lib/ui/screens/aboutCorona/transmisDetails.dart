import 'package:flutter/material.dart';

class TransmisDetails extends StatefulWidget {
  @override
  _TransmisDetailsState createState() => _TransmisDetailsState();
}

class _TransmisDetailsState extends State<TransmisDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mode de transmission'),
      ),
      body: Container(
        child: Center(child: Text('Deltails')),
      ),
    );
  }
}
