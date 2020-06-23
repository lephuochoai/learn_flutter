import 'package:flutter/material.dart';
import 'drawer/mainPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My App', home: new MainPage());
  }
}
