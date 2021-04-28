import 'package:flutter/material.dart';
import 'package:medium_flutter_multinavigator/Navigator1/Bottom1Page.dart';
import 'package:medium_flutter_multinavigator/Navigator1/Bottom2Page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedBottomIndex = 0;

  final Widget bottom1Page = Bottom1Page();
  final Widget bottom2Page = Bottom2Page();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Offstage(
                        offstage: !(selectedBottomIndex == 0),
                        child: bottom1Page,
                      ),
                      Offstage(
                        offstage: !(selectedBottomIndex == 1),
                        child: bottom2Page,
                      ),


                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    child: Text("Bottom Bar 1"),
                    onPressed: () {
                      setState(() {
                        selectedBottomIndex = 0;
                      });
                    }),
                RaisedButton(
                    child: Text("Bottom Bar 2"),
                    onPressed: () {
                      setState(() {
                        selectedBottomIndex = 1;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
