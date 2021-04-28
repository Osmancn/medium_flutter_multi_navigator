import 'package:flutter/material.dart';

class Bottom2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text("Bottom Page 2")),
        body: Container(
          child: Center(child: Text("Bottom Page 2")),
        ),
      ),
    );
  }
}
