import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      margin: EdgeInsets.only(bottom: 0),
      accountName: Text('Bini'),
      accountEmail: Text('toto@gmail0com'),
      currentAccountPicture: CircleAvatar(
        child: Icon(Icons.person, size: 42, color: Colors.white),
        backgroundColor: Colors.grey,
      ),
    );

    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profil'),
            onTap: () => {}),
        Divider(),
        ListTile(
            leading: Icon(Icons.warning),
            title: Text('Alerte Corona'),
            onTap: () => {}),
        Divider(),
        ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Dons'),
            onTap: () => {}),
        Divider(),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text('Paramètres'),
            onTap: () => {}),
        Divider(),
        ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('A propos'),
            onTap: () => {}),
        Divider(),
        ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Aide'),
            onTap: () => {}),
      ],
    );
    return Container(
      child: drawerItems,
    );
  }
}
