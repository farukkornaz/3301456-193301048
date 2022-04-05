import 'package:buyutec/MainPages/createArticle.dart';
import 'package:buyutec/MainPages/secondpage.dart';
import 'package:flutter/material.dart';

import 'Profile.dart';
import 'Settings.dart';
import 'UserArticles.dart';
import 'createArticle.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    /*
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    */
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,title: Text("buyutec"),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text(
                'Büyüteç',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.article_outlined),
              title: Text('Yazılarım'),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>UserArticles())),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings())),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          /*
          Expanded(
            child: Container(
              width: width,
              height: 0.10 * height,
              child: Row(
                children: [Text("Row Widget")],
              ),
            ),
          ),
          */
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Başlık'),
                  subtitle: Text(
                      "İçerik'in bir kısmı burada gozukucek"),
                  isThreeLine: true,
                ),
              ),
              onTap: () {
                //TODO: Navigation islemleri
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateArticle())),
        label: Text('Makale oluştur'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
