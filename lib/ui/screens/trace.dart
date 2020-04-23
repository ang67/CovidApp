import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TracePage extends StatefulWidget {
  @override
  _TracePageState createState() => _TracePageState();
}

class _TracePageState extends State<TracePage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Builder(builder: (BuildContext context) {
      return WebView(
        initialUrl:
            'https://www.arcgis.com/apps/opsdashboard/index.html#/85320e2ea5424dfaaa75ae62e5c06e61',
        javascriptMode: JavascriptMode.unrestricted,
      );
    }));
  }
}
