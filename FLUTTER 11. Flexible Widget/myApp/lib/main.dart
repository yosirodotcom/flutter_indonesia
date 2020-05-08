import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //https://pub.dev/packages/google_fonts

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FLUTTER 11. Flexible Widget",
            style: GoogleFonts.aladin(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Column(children: <Widget>[
          Flexible(
              child: Container(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: Container(
                                margin: EdgeInsets.all(15),
                                color: Colors.amberAccent)),
                        Flexible(
                            child: Container(
                                margin: EdgeInsets.all(15),
                                color: Colors.greenAccent)),
                        Flexible(
                            child: Container(
                                margin: EdgeInsets.all(15),
                                color: Colors.cyan)),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  color: Colors.black45),
              flex: 1),
          Flexible(
              child: Container(margin: EdgeInsets.all(10), color: Colors.red),
              flex: 2),
          Flexible(
              child: Container(margin: EdgeInsets.all(10), color: Colors.teal),
              flex: 3),
        ]),
      ),
    );
  }
}
