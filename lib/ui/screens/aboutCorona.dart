import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://www.arcgis.com/apps/opsdashboard/index.html#/85320e2ea5424dfaaa75ae62e5c06e61',
          javascriptMode: JavascriptMode.unrestricted,
          
        );
  },
        ));
  }
  }
