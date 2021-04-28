import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A Page"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  child: Text("root false pop"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: false).pop();
                  }),
              RaisedButton(
                  child: Text("root true pop"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
