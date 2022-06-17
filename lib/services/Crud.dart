import 'package:cloud_firestore/cloud_firestore.dart';
class Crud{

  Future saveArticle({required content, required String mail}) async {
    final docArticle = FirebaseFirestore.instance.collection('articles').doc();

    final article = {
      'authMail': mail,
      'content': content,
    };

    await docArticle.set(article);
  }

  Future getArticle({required String mail}) async {
    final docArticle = FirebaseFirestore.instance.collection('articles').where("mail" == mail);
  }
}