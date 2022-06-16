import 'package:flutter/material.dart';
import 'package:buyutec/session.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'dart:convert';
import '../services/Crud.dart';

class CreateArticle extends StatefulWidget {
  const CreateArticle({Key? key}) : super(key: key);

  @override
  _CreateArticleState createState() => _CreateArticleState();
}

quill.QuillController _controller = quill.QuillController.basic();

class _CreateArticleState extends State<CreateArticle> {
  Crud operator = Crud();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: quill.QuillToolbar.basic(controller: _controller),
            ),
            Expanded(
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
                child: quill.QuillEditor.basic(
                  controller: _controller,
                  readOnly: false, // true for view only mode
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {

            var json = jsonEncode(_controller.document.toDelta().toJson());

            /*Map<String, dynamic> jsonData =
            bil.text = json.encode(json) as Map<String, dynamic>;*/

            operator.saveArticle(content: json, mail: Session.mail);
          } ,
          label: Text("post"),
          icon: Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
