import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // Tạo key cho context
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  _showSnackBar() {
    print("show notification");
    final snackBar = new SnackBar(
      content: new Text('This is a SnackBar'),
      duration: new Duration(seconds: 3),
      backgroundColor: Colors.green,
      action: new SnackBarAction(
          label: 'OK',
          onPressed: () {
            print('Press OK on SnackBar');
          }),
    );

    // Để hiện snack thì pahri cho biết nó hiện từ đâu ( từ _scaffoldKey )
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: new Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: Text('SnackBar show notification'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.info),
              onPressed: _showSnackBar,
            ),
          ],
        ),
      ),
    );
  }
}
