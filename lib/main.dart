import 'package:flutter/material.dart';
import 'tabs-test/Tab1.dart';
import 'tabs-test/Tab2.dart';
import 'tabs-test/Tab3.dart';
import 'tabs-test/Tab4.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabs = new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.deepOrangeAccent,
            title: new Text('Tabs'),
            bottom: new TabBar(
              tabs: [
                new Tab(icon: Icon(Icons.home), text: 'Home'),
                new Tab(icon: Icon(Icons.group), text: 'Group'),
                new Tab(icon: Icon(Icons.chat), text: 'Chat'),
                new Tab(icon: Icon(Icons.cloud_queue), text: 'Cloud'),
              ],
              indicatorColor: Colors.yellow,
              indicatorWeight: 2,
            ),
          ),
          body: new TabBarView(children: [
            new Tabs1(),
            new Tabs2(),
            new Tabs3(),
            new Tabs4(),
          ]),
        ));

    return MaterialApp(title: 'My App', home: tabs);
  }
}
