import 'package:flutter/material.dart';

class Baslik extends StatefulWidget {
  const Baslik({Key? key}) : super(key: key);

  @override
  _BaslikState createState() => _BaslikState();
}

class _BaslikState extends State<Baslik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Makalnenin Başlıgını yaz"),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
    );
  }
}
