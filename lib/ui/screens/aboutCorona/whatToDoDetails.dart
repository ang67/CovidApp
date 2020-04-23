import 'package:flutter/material.dart';

class WhatToDo extends StatefulWidget {
  @override
  _WhatToDoState createState() => _WhatToDoState();
}

class _WhatToDoState extends State<WhatToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("En cas d'infection"),
      ),
      body: Container(
        child: Center(child: Text('Details')),
      ),
    );
  }
}