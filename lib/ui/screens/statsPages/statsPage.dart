import 'package:covidapp/ui/screens/statsPages/countriesPage.dart';
import 'package:covidapp/ui/screens/statsPages/mapPage.dart';
import 'package:covidapp/ui/screens/statsPages/totalsPage.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

  var total= {
    
  };
  static List<Widget> _kTabPages = [
    TotalsTabPage(),
    CountriesTabPage(),
    MapTabPage(),
  ];
  static const _kTabs = <Tab>[
    Tab(text: 'Totaux'),
    Tab(text: 'Pays'),
    Tab(text: 'Carte'),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Statistiques'),
          bottom: TabBar(
            tabs: _kTabs,
            indicator: BoxDecoration(
              color: Colors.red[800],
            ),
            labelColor: null,
            labelStyle: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.white70,
            indicatorWeight: 0,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
