import 'package:covidapp/models/statsModel.dart';
import 'package:flutter/material.dart';

class TotalsTabPage extends StatefulWidget {
  @override
  _TotalsTabPageState createState() => _TotalsTabPageState();
}

class _TotalsTabPageState extends State<TotalsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              border: Border.all(width: 0.50, color: Colors.black26)),
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.,
              children: <Widget>[
                SizedBox(height: 25),
                Text('Total Confirmés',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 40.0,
                    )),
                Text('2 000 984',
                    style: TextStyle(
                      color: Colors.yellow[800],
                      fontSize: 55.0,
                    )),
                Divider(),
                Text('Total Morts',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 40.0,
                    )),
                Text('128 071',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 55.0,
                    )),
                Divider(),
                Text('185',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 55.0,
                    )),
                Text('Pays/Regions',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 40.0,
                    )),
              ],
            ),
          )),
    );
  }
}
