import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TotalsTabPage extends StatefulWidget {
  @override
  _TotalsTabPageState createState() => _TotalsTabPageState();
}

class _TotalsTabPageState extends State<TotalsTabPage> {
  Total total = Total(2000984, 128071, 185);
  final formatter = new NumberFormat("#,###");

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
                Text("${formatter.format(total.getConfirmed())}",
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
                Text('${formatter.format(total.getDeath())}',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 55.0,
                    )),
                Divider(),
                Text("${formatter.format(total.getCountry())}",
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

class Total {
  int confirmed;
  int death;
  int contry;

  Total(this.confirmed, this.death, this.contry);

  int getConfirmed() {
    return this.confirmed;
  }

  int getDeath() {
    return this.death;
  }

  int getCountry() {
    return this.contry;
  }
}
