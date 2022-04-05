import 'package:buyutec/Widgets/CUstomElevatedButton.dart';
import 'package:flutter/material.dart';
import 'About.dart';
import 'User/login.dart';
import 'User/register.dart';

void main() {
  runApp(EntryPage());
}

class EntryPage extends StatelessWidget {
  const EntryPage({Key key}) : super(key: key);

  static const String _title = 'Büyüteç';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: SEntryPage(),
      ),
    );
  }
}

class SEntryPage extends StatefulWidget {
  const SEntryPage({Key key}) : super(key: key);

  @override
  _SEntryPageState createState() => _SEntryPageState();
}

class _SEntryPageState extends State<SEntryPage> {
  /*
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20));
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search,
              size: 200,
              color: Colors.brown,
              semanticLabel: "Buyutec",
            ),
            Text(
              "Büyüteç",
              style: TextStyle(color: Colors.lightGreen, fontSize: 40),
            ),
            Divider(
              thickness: 4,
              indent: 100,
              endIndent: 100,
              color: Colors.deepOrangeAccent,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Giriş Yap"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text("Kayıt Ol"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => About()));
              },
              child: Text("Hakkında"),
            ),
            SizedBox(
              height: 150,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
