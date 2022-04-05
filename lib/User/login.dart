import 'package:buyutec/MainPages/MainPage.dart';
import 'package:buyutec/User/register.dart';
import 'package:flutter/material.dart';

import 'User.dart';

class Login extends StatefulWidget {
  final User? user;

  const Login({Key? key, this.user}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  User? user;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Center(child: Text("Griş Yap"))),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'e-mail'),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'e-mail alanı boş bırakılamaz';
                    }
                    if (!RegExp(
                            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                        .hasMatch(value)) {
                      return 'yanlış bir e-mail girdiniz';
                    }
                    if (email.text != widget.user!.getEmail()) {
                      return "boyle bir mail bulunamadı";
                    }
                    return null;
                  },
                  controller: email,
                  onSaved: (String? value) {
                    _email = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'şifre'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'bu alan boş bırakılamaz';
                    }
                    if (password.text != widget.user!.getPassword()) {
                      return "şifre hatalı";
                    }
                    return null;
                  },
                  controller: password,
                  onSaved: (String? value) {
                    _password = value;
                  },
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(color: Colors.brown, fontSize: 16),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                          (route) => false);
                      //TODO: anasayfaya yonlendır.
                      return;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
