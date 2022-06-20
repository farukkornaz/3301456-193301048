import 'package:flutter/material.dart';
import 'entryPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: MyApp()));
  //runApp(EntryPage());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
    void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EntryPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage("images/launch_image.jpg"),
                width: 300,
                height: 400,
              ),
            ),],
        ),/*
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/launch_image.jpg"),
            fit: BoxFit.cover,
          ),

        ),*/
      ),
    );
  }
}
