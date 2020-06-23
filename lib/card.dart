import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(
              Icons.account_box,
              color: Colors.blue,
            ),
            title: new Text(
              'Lê Phước Hoài',
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: new Text('Developer'),
          ),
          new Divider(color: Colors.blue, indent: 16),
          new ListTile(
            leading: new Icon(
              Icons.email,
              color: Colors.blue,
            ),
            title: Text("phuochoaileqn@gmail.com"),
          ),
          new Divider(color: Colors.blue, indent: 16),
          new ListTile(
            leading: new Icon(
              Icons.phone,
              color: Colors.blue,
            ),
            title: Text("0935255513"),
          )
        ],
      ),
    );

    final sizedBox = new Container(
      margin: EdgeInsets.all(10.0),
      child: new SizedBox(
        height: 300.0,
        child: card,
      ),
    );

    final center = new Center(
      child: sizedBox,
    );

    return MaterialApp(
      title: '',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Card Example'),
        ),
        body: center,
      ),
    );
  }
}
