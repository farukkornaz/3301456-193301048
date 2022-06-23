import 'package:buyutec/MainPages/CreateArticle/ArticleContent.dart';
import 'package:buyutec/MainPages/ShowArticle.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Settings;
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'CreateArticle/baslik.dart';
import 'Profile.dart';
import 'Settings.dart';
import 'UserArticles.dart';
import 'CreateArticle/ArticleContent.dart';
import 'dart:convert';
import 'Edite_Profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var articleSnapShots = FirebaseFirestore.instance.collection('articles');
  QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    /*
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    */
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("buyutec"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
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
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserArticles())),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings())),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: StreamBuilder<QuerySnapshot>(
              stream: articleSnapShots.snapshots(),
              builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                if(asyncSnapshot.hasError){
                  return Center(child: Text("bir hata olustu"),);
                }else{
                  if(asyncSnapshot.hasData){
                    List<DocumentSnapshot> articles = asyncSnapshot.data.docs;
                    return ListView.builder(
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          var myJSON = jsonDecode(articles[index]["content"]);
                          _controller = QuillController(
                              document: Document.fromJson(myJSON),
                              selection: TextSelection.collapsed(offset: 0));
                          QuillController controller2 = _controller;
                          String baslik = articles[index]["title"];
                          return GestureDetector(
                            child: Card(
                              child: ListTile(
                                leading: Icon(Icons.article_outlined),
                                title: Text(articles[index]["title"]),
                                subtitle:
                                Text("İçerik'in bir kısmı burada gozukucek"),
                                isThreeLine: true,
                              ),
                            ),
                            onTap: () {
                              //TODO: Navigation islemleri
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ShowArticle(
                                        controller: controller2,
                                        Baslik: baslik,
                                      )));
                            },
                          );

                          /*return Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepOrange,
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0)
                                ]),
                                child: QuillEditor.basic(
                                    controller: _controller, readOnly: true),
                              ),
                            ),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                      );*/
                        });
                  }else{
                    return Center(child:  CircularProgressIndicator(),);
                  }
                }
              },
            ),
          ),
        ],
      ),
      /*
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text(Session.mail),
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
          InkWell(
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
        ],
      ),
       */

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditeProfile())),
        label: Text('Makale oluştur'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
