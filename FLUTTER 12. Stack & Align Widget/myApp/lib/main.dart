import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //https://pub.dev/packages/google_fonts

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  _MyAppState() {
    for (num i = 0; i < 100; i++) {
      widgets.add(Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Text("Ini adalah baris ke " + i.toString(),
              style: TextStyle(fontSize: 50, color: Colors.blue)),
        ),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FLUTTER 12. Stack & Align Widget",
            style: GoogleFonts.aladin(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            // layer 1
            Column(children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Flexible(child: Container(color: Colors.white)),
                Flexible(child: Container(color: Colors.black12))
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Flexible(child: Container(color: Colors.black12)),
                Flexible(child: Container(color: Colors.white))
              ]))
            ]),
            // Layer 2
            ListView(children: widgets),
            // Layer seterusnya
            Align(
                alignment: Alignment.center,
                child: RaisedButton(
                    child: Text("center"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                    child: Text("bawah kanan"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0, 1),
                child: RaisedButton(
                    child: Text("koordinat 0,1"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0, 0.7),
                child: RaisedButton(
                    child: Text("koordinat 0,0.7"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0, 0.4),
                child: RaisedButton(
                    child: Text("koordinat 0,0.4"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(1, 0),
                child: RaisedButton(
                    child: Text("koordinat 1,0"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0.7, 0),
                child: RaisedButton(
                    child: Text("koordinat 0.7,0"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0.4, 0),
                child: RaisedButton(
                    child: Text("koordinat 0.4,0"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0, -1),
                child: RaisedButton(
                    child: Text("koordinat 0,-1"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0, -0.7),
                child: RaisedButton(
                    child: Text("koordinat 0,-0.7"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(0, -0.4),
                child: RaisedButton(
                    child: Text("koordinat 0,-0.4"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(-1, 0),
                child: RaisedButton(
                    child: Text("koordinat -1,0"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(-0.7, 0),
                child: RaisedButton(
                    child: Text("koordinat -0.7,0"),
                    color: Colors.amber,
                    onPressed: () {})),
            Align(
                alignment: Alignment(-0.4, 0),
                child: RaisedButton(
                    child: Text("koordinat -0.4,0"),
                    color: Colors.amber,
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
