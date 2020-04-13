
import 'package:covidapp/ui/base.dart';
import 'package:covidapp/ui/screens/aboutCorona.dart';
import 'package:covidapp/ui/screens/statsPage.dart';
import 'package:covidapp/ui/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final String title = "COVIDAPP";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: buildBaseTheme(),
      initialRoute: '/',
      routes: {
        '/':(context) => BaseScreen(),
        '/stats':(context) => StatsPage(),
        '/aboutCorona':(context) => AboutCoronaPage(),
        //
      },
    );
  }
}