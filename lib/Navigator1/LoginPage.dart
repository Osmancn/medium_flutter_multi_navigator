import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login")),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (_) => HomePage()));
            },
          ),
        ),
      ),
    );
  }
}
