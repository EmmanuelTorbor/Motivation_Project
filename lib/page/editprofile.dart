import 'package:flutter/material.dart';
import 'package:motivation_project/model/user.dart';
import 'package:motivation_project/page/profilepage.dart';
import 'package:motivation_project/profilepage.dart';
import 'package:motivation_project/profilewidget/textfield.dart' as TextField;
import 'package:motivation_project/utils/userpreferences.dart' as UserProfile;

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'About',
                  text: user.about,
                  maxLines: 5,
                  onChanged: (about) {},
                ),
              ],
            ),
          ),
        ),
      );
}

// ignore: non_constant_identifier_names
ProfileWidget(
    {required String imagePath,
    required bool isEdit,
    required Future<Null> Function() onClicked}) {}

buildAppBar(BuildContext context) {}

// ignore: non_constant_identifier_names
ThemeSwitchingArea({required Builder child}) {}
