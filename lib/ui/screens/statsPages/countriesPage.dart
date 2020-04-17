import 'package:covidapp/models/statsModel.dart';
import 'package:covidapp/ui/screens/statsPages/detail.dart';
import 'package:flutter/material.dart';

class CountriesTabPage extends StatefulWidget {
  @override
  _CountriesTabPageState createState() => _CountriesTabPageState();
}

class _CountriesTabPageState extends State<CountriesTabPage> {
  

  @override
  Widget build(BuildContext context) {
    
    final listPays = [
    new Pays('Us', 654301, 32628),
    Pays('Spain', 182816, 19130),
    Pays('Italy', 168941, 22170),
    Pays('France', 147088, 17941),
    Pays('Germany', 136569, 3943),
    Pays('United Kingdom', 104145, 13759),
    Pays('China', 83403, 3346),
    Pays('Iran', 77995, 4869),
    Pays('Turkey', 74193, 1643),
    Pays('Belgium', 34809, 4857),
    Pays('Canada', 30441, 1229),
    Pays('Brazil', 30425, 1924),
    Pays('Netherlands', 29383, 3327),
    Pays('Russia', 27938, 232),
  ];

  final numItems = listPays.length;
  Widget _buildRow(int index) {
    index--;
    return ListTile(
      title: Row(
        children: <Widget>[
          Text('${listPays[index].getNbConfirmed()}',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.yellow[800])),
          Text('  ${listPays[index].getName()}',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.black87)),
          Text(' (${listPays[index].getNbDeath()})',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.red)),
        ],
      ),
      trailing: IconButton(icon: Icon(Icons.keyboard_arrow_right), onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              var detailScreen = DetailScreen(pays: listPays[index]);
              return detailScreen;
            },
          ),
        );
      }, color: Theme.of(context).accentColor),
    );
  }
    return ListView.builder(
      itemCount: numItems * 2,
      
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      },
    );
  }
}

