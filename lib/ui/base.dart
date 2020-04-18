import 'package:covidapp/ui/screens/diagnostic.dart';
import 'package:covidapp/ui/screens/home.dart';
import 'package:covidapp/ui/screens/map.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentTabIndex = 0;
  double _iconSize = 64.0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      HomePage(),
      DiagnosticPage(),
      MapPage(),
      Center(
          child: Icon(Icons.timeline,
              size: _iconSize, color: Theme.of(context).accentColor)),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Accueil'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_hospital),
        title: Text('Diagnostic'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.map),
        title: Text('Trace'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.help),
        title: Text('Aide'),
      ),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 10,
      items: _kBottmonNavBarItems,
      selectedLabelStyle: TextStyle(fontSize: 16.5),
      unselectedLabelStyle: TextStyle(fontSize: 14),
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('COVIDAPP'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_active), onPressed: () => {}),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                height: 50,
                  child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Paramètres'),
                      onTap: () => {})),
              PopupMenuItem(
                child: ListTile(
                    leading: Icon(Icons.card_giftcard),
                    title: Text('Dons'),
                    onTap: () => {}),
              ),
              PopupMenuItem(
                child: ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text('A propos'),
                    onTap: () => {
                      Navigator.pushNamed(context, '/about'),
                    }),
              ),
            ];
          }),
        ],
      ),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
