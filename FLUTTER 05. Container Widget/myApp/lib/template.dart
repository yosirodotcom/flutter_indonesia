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
            "FLUTTER 04. Row dan Column Widget",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
