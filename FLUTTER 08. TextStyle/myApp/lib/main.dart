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
            "FLUTTER 08. TextStyle",
            style: GoogleFonts.montserratAlternates(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hello World 123!!!",
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.red,
                      decorationThickness: 20,
                      decorationStyle: TextDecorationStyle.wavy),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
