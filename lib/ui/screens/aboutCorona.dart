import 'package:covidapp/ui/widgets/card.dart';
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
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(7),
                child: Center(
                  child: Text("S'informer pour éradique le COVID",
                      style: Theme.of(context).textTheme.headline1),
                )),
            MyCard(
                Icon(Icons.share, color: Colors.blue, size: 50),
                'Mode de transmission ?',
                'Savoir comment de transmet le virus'),
            SizedBox(height: 15),
            MyCard(Icon(Icons.warning, color: Colors.orange, size: 50),
                'Symptômes', 'Apprendre à reconnaître les symtômes du covid'),
            SizedBox(height: 15),
            MyCard(
                Icon(Icons.do_not_disturb, color: Colors.red, size: 50),
                'Prévention & Traitement',
                'Savoir comment prévenir la maladie'),
            SizedBox(height: 15),
            MyCard(Icon(Icons.help, color: Colors.green, size: 50),
                "Que faire ?", "Que faire en cas d'infection"),
            SizedBox(height: 15),
          ],
        ));
  }
}
