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
  String message = " Ini adalah text default";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FLUTTER 07. Anonymous Method",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("Tekanlah"),
                onPressed: () {
                  setState(() {
                    message = "Tombol ini sudah ditekan";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
