import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Penggunaan Column dan Row sama dan memiliki properti yang sama
// Karena di body hanya bisa diisi satu class parent, maka yang akan di contohkan
// adalah penggunaan Column saja.

// Column memiliki children yang berisi list widget yang akan di susun
// secara vertikal, sedangkan Row akan di susun secara horizontal

// Pada body saya akan memasukkan kolom ke Class SafeArea agar tampilannya
// berada di dalam body handphone.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FLUTTER 04. Row dan Column Widget"),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text("Widget 1"),
              Text("Widget 2"),
              Text("Widget 3")
            ],
            // Column/Row properties:
            mainAxisAlignment: MainAxisAlignment
                .center, // meletakkan semua childrennya di tengah sumbu y (Row kebalikannya)
            crossAxisAlignment: CrossAxisAlignment
                .start, // meletakkan semua childrennya di tengah sumbu x (Row kebalikannya)
          ),
        ),
      ),
    );
  }
}
