import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  static const String _title = 'Büyüteç';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), backgroundColor: Colors.brown,),
      body: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(child: Text("Hakkında Sayfası")),
      ),
    );

  }
}
