import 'package:buyutec/User/UserPreferences.dart';
import 'package:flutter/material.dart';

import '../User/Profile_Widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = UserPreferences.MyUser;

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
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                user.email,
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
              )
            ],
          ),
          SizedBox(height: 24),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: Text("İstatistikler"),
                onPressed: () {}),
          ),
          SizedBox(height: 24,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hakkımda',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),SizedBox(height: 15,),
                Text(user.about,style: TextStyle(fontSize: 16, height: 1.4),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
