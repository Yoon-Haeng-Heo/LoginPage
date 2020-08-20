import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Firebase Login")),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Column(
              children: <Widget>[
                Container(
                  width:200,height : 200,color: Colors.blue,
                ),
                Stack(children: <Widget>[

                  Container(
                    width:200,height : 200,color: Colors.amber,
                  ),
                  Container(
                    width:100,height : 100,color: Colors.purple,
                  ),
                ],),
                Container(
                  width:200,height : 200,color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
