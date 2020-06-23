import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Test font'),
        ),
        body: new Column(
          children: <Widget>[
            new Text(
              'This is Sriracha font',
              style: new TextStyle(
                fontFamily: 'Sriracha',
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
