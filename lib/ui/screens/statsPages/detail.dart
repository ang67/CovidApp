import 'package:covidapp/models/statsModel.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Pays pays;
  const DetailScreen({Key key, @required this.pays}) : super(key: key);
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails'),
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            Text('${pays.getName()}'),
            Text('${pays.getNbConfirmed()}'),
            Text('${pays.getNbDeath()}'),
          ],
        )
      ),
    );
  }
}

