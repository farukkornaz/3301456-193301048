import 'dart:html';

import 'package:flutter/material.dart';
import 'package:buyutec/session.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'dart:convert';
import '../../services/Crud.dart';

class ArticleContent extends StatefulWidget {
  const ArticleContent({Key? key}) : super(key: key);

  @override
  _ArticleContentState createState() => _ArticleContentState();
}

quill.QuillController _controller = quill.QuillController.basic();

class _ArticleContentState extends State<ArticleContent> {
  Crud operator = Crud();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _baslik;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Makaleni Yaz",
            style: TextStyle(color: Colors.black87),
          ),
          shadowColor: Colors.blueGrey,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Makalenin Başlığı'),
                maxLength: 40,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'bu alan boş bırakılamaz';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _baslik = value;
                },
              ),

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
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            var json = jsonEncode(_controller.document.toDelta().toJson());
            /*Map<String, dynamic> jsonData =
            bil.text = json.encode(json) as Map<String, dynamic>;*/
            _formKey.currentState!.save();


            operator.saveArticle(content: json, mail: Session.mail, title: _baslik);
          },
          label: Text("post"),
          icon: Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
