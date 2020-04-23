import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String description;
  const MyCard(this.icon, this.title, this.description) ;
  @override
  Widget build(BuildContext context) {
    return Card(
              color: Colors.white,
              elevation: 5.0,
              child: Container(
                  height: 100.0,
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    onTap: () {},
                    child: Row(
                      
                      children: <Widget>[
                        
                        Container(
                          padding: EdgeInsets.all(15),
                          child: icon),
                        Flexible(
                                                  child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                            children: <Widget>[
                            Text('$title', style: Theme.of(context).textTheme.headline2),
                            Text('$description', style: Theme.of(context).textTheme.bodyText1),
                          ]),
                        )
                        ],
                    ),
                  )),
            );
  }
}