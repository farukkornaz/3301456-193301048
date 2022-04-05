import 'package:flutter/material.dart';
import 'package:buyutec/User/login.dart';
import 'User.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // parolalar yanlıs ıse text form fieldın ıcerıgını kontrol etmek ve temızlemek ıcın kullanıcam
  final fieldText = TextEditingController();
  final fieldText2 = TextEditingController();

  String? _name;
  String? _email;
  String? _password;
  String? confirm;

  bool comparePassword(String p1, String p2) {
    int result = p1.compareTo(p2);
    if (result == 0) {
      return true;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kayıt Ol"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
                  maxLength: 40,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'bu alan boş bırakılamaz';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    _name = value;
                  },
                ), //isim
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

                    return null;
                  },
                  onSaved: (String? value) {
                    _email = value;
                  },
                ), //email
                TextFormField(
                  decoration: InputDecoration(labelText: 'şifre'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'bu alan boş bırakılamaz';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    _password = value;
                  },
                  controller: fieldText,
                ), //password
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "şifre'yi tekrar gırınız"),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'bu alan boş bırakılamaz';
                    } else if (fieldText2.text != fieldText.text) {
                      return "şifreler eşleşmiyor, lutfen tekrar gırınız";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    confirm = value;
                  },
                  controller: fieldText2,
                ), //confirm
                SizedBox(height: 100),
                ElevatedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.brown, fontSize: 16),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      User u1 = User(_name!, _email!, _password!);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login(user: u1,)),
                      );
                      //TODO:navigator push --> Login
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
