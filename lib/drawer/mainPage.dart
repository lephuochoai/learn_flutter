import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var title = '';
  Drawer _buildDrawer(context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new Container(
            height: 250.0,
            child: new DrawerHeader(
              child: new Container(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Center(
                      child: new Image.asset(
                        'assets/images/avatar.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Center(
                        child: new Text(
                      'Lê Phước Hoài',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Sriracha',
                          fontSize: 20.0),
                    )),
                    new Center(
                        child: new Text(
                      'Developer',
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          // fontFamily: 'Sriracha',
                          fontSize: 15.0),
                    )),
                  ],
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.photo),
            title: Text('Photos'),
            onTap: () {
              setState(() {
                this.title = 'This is a Photos Screen';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
              setState(() {
                this.title = 'This is a Notification Screen';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              setState(() {
                this.title = 'This is a Settings Screen';
              });
              Navigator.pop(context);
            },
          ),
          new Divider(
            color: Colors.black,
            indent: 16.0,
          ),
          new ListTile(
            title: Text('About us'),
            onTap: () {
              setState(() {
                this.title = 'This is a About US Screen';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: Text('Privacy'),
            onTap: () {
              setState(() {
                this.title = 'This is a Privacy Screen';
              });
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer example'),
      ),
      body: new Center(
        child: new Text(
          this.title,
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }
}
