import 'package:flutter/material.dart';
import 'user.dart';

class LoginPage extends StatefulWidget {
  // LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final user = new User();

  @override
  Widget build(BuildContext context) {
    final TextField _txtUsername = new TextField(
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        hintText: 'Enter the username',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      autocorrect: false,
      autofocus: false,
      onChanged: (text) {
        setState(() {
          this.user.username = text;
        });
      },
    );

    final TextField _txtEmail = new TextField(
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        hintText: 'Enter the email',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      autocorrect: false,
      autofocus: false,
      onChanged: (text) {
        setState(() {
          this.user.email = text;
        });
      },
    );

    final TextField _txtPassword = new TextField(
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        hintText: 'Enter the password',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      autocorrect: false,
      obscureText: true,
      onChanged: (text) {
        setState(() {
          this.user.password = text;
        });
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: Text('Form example'),
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(width: 1.2, color: Colors.black12),
                  // borderRadius: new BorderRadius.all(const Radius.circular(999.0)),
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new ExactAssetImage(
                      'assets/images/logo.jpg',
                    ),
                  ),
                ),
                margin: EdgeInsets.all(50.0),
                width: 200,
                height: 200,
              ),
              new Container(
                margin:
                    new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10),
                decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  border: new Border.all(width: 1.2, color: Colors.black12),
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(6.0)),
                ),
                child: _txtUsername,
              ),
              new Container(
                margin:
                    new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10),
                decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    border: new Border.all(width: 1.2, color: Colors.black12),
                    borderRadius:
                        new BorderRadius.all(const Radius.circular(6.0))),
                child: _txtEmail,
              ),
              new Container(
                margin:
                    new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10),
                decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    border: new Border.all(width: 1.2, color: Colors.black12),
                    borderRadius:
                        new BorderRadius.all(const Radius.circular(6.0))),
                child: _txtPassword,
              ),
              new Container(
                margin: new EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Row(
                  children: <Widget>[
                    // Expanded cho button dài bằng width
                    new Expanded(
                        child: new RaisedButton(
                      onPressed: () {
                        print('Click button Login');
                        print('Username: ${user.username}');
                        print('Email: ${user.email}');
                        print('Password: ${user.password}');
                      },
                      child: new Text('Login'),
                      color: Colors.blue,
                      textColor: Colors.white,
                    )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
