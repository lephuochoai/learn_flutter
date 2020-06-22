import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: new MainScreen(title: 'Gridview example'),
    );
  }
}

class MainScreen extends StatefulWidget {
  final String title;
  MainScreen({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('GridView example'),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 100,
        children: _buildGridtitles(31),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
      ),
    );
  }
}

List<Widget> _buildGridtitles(numberOfTitles) {
  List<Stack> containers = new List<Stack>.generate(numberOfTitles, (index) {
    return new Stack(
      alignment: new Alignment(0, 0),
      children: <Widget>[
        new Container(
          child: new Text((index + 1).toString()),
        )
      ],
    );
  });
  return containers;
}
