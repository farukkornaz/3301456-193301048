import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

class ShowArticle extends StatefulWidget {
  //final QuillController controller;
  var controller;
  var Baslik;
  ShowArticle({Key? key, this.controller, this.Baslik}) : super(key: key);

  @override
  _ShowArticleState createState() => _ShowArticleState();
}

class _ShowArticleState extends State<ShowArticle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            title: Text("${widget.Baslik}",style: TextStyle(color: Colors.black87),),
            centerTitle: true,
            backgroundColor: Colors.white),
        body: Container(
          child: QuillEditor.basic(
            controller: widget.controller,
            readOnly: true, // true for view only mode
          ),
        ),
      ),
    );
  }
}
