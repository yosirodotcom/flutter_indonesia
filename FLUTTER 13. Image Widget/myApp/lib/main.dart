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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FLUTTER 13. Image Widget",
            style: GoogleFonts.aladin(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Center(
                child: Text("Gambar dari Internet",
                    style: TextStyle(fontSize: 50))),
            Flexible(
              child: Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(10),
                child: Image(
                    image: NetworkImage(
                        "http://assets.stickpng.com/images/580b57fbd9996e24bc43bb8e.png"),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat),
              ),
            ),
            Center(
                child:
                    Text("Gambar dari Asset", style: TextStyle(fontSize: 50))),
            Flexible(
              child: Container(
                // width: 200,
                // height: 200,
                padding: EdgeInsets.all(10),
                child: Image(
                    image: AssetImage("images/kucing.png"),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
