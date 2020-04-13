import 'package:flutter/material.dart';

final ThemeData baseTheme = buildBaseTheme();

ThemeData buildBaseTheme() {
  final ThemeData base = ThemeData(

    brightness: Brightness.light,
    primaryColor: Colors.red[500],
    accentColor: Colors.blue[300],
    fontFamily: 'Georgia',

    textTheme: TextTheme(
          
          headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
          bodyText2: TextStyle(fontSize: 12.0),

    )
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    
  );
  return base.copyWith(
    textTheme: base.textTheme,
    primaryTextTheme: base.primaryTextTheme,
    accentTextTheme: base.accentTextTheme,
    
  );
}
