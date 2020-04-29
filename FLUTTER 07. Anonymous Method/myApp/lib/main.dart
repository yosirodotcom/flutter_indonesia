import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //https://pub.dev/packages/google_fonts

void main() {
  runApp(MyApp());
}

// Inti dari stateful widget adalah ingin memasukkan fungsi setState
// ketikan stl pada layar dan enter untuk membuat class stateful widget

// Widget tree

// Center:
// - child : Column:
//           - mainAxisAlignment
//           - children:
//             - Text
//               - ""
//               - style
//                 - TextStyle
//                   - fontSize
//             - RaisedButton
//               - child: Text
//               - onpressed

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FLUTTER 06. Stateless & Stateful Widget",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 10 + number.toDouble()),
                ),
                RaisedButton(
                  child: Text("Tambah Bilangan"),
                  onPressed: tekanTombol,
                ),
              ]),
        ),
      ),
    );
  }
}
