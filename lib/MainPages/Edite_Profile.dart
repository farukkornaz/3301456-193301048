import 'package:flutter/material.dart';
import '../User/Profile_Widget.dart';
import 'package:buyutec/User/UserPreferences.dart';
import '../User/User.dart';
import 'package:buyutec/session.dart';

class EditeProfile extends StatefulWidget {
  const EditeProfile({Key? key}) : super(key: key);

  @override
  _EditeProfileState createState() => _EditeProfileState();
}

class _EditeProfileState extends State<EditeProfile> {
  User user = UserPreferences.MyUser;
  late final TextEditingController nameController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController(text: Session.mail);
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: BackButton(),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(imagePath: user.imagePath, onClicked: () async {}),
          SizedBox(height: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "İsim",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "hakkımda",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                controller: nameController,
              ),
            ],
          )
        ],
      ),
    );
  }
}
