import 'package:flutter/material.dart';

import 'APage.dart';

class Bottom1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (BuildContext context) => new Bottom1Content(),
      },
    );
  }
}

class Bottom1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom 1 Page"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  child: Text("Root false push A Page"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(builder: (_) => APage()));
                  }),
              RaisedButton(
                  child: Text("Root true push A Page"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (_) => APage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
