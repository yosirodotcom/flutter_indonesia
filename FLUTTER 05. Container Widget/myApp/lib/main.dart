import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Pada kali ini akan dibahas tentang class Container() yang bisa terdiri
// hanya satu anak (child), dan berbagai properties nya seperti
// urutan di bawah ini

// Container:
//   - child: a class
//   - margin
//   - padding
//   - color
//   - decoration
//     - BoxDecoration
//       - borderRadius
//       - gradient
//         - begin
//         - end
//         - colors: <Color>[]

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
            "FLUTTER 05. Container Widget",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Container(
          color: Colors.redAccent,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 15, 13, 23),
            padding: EdgeInsets.only(bottom: 30, top: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.amber,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
