import 'package:motivation_project/page/profilepage.dart';

class UserApp {
  String uid;
  String email;
  UserApp({required this.uid, required this.email});
}

class UserPreferences {
  static const myUser = User(
    imagePath:
        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
    name: 'Emmamuel T',
    email: 'eman.torbor@gmail.com',
    about: 'Hooper and part of The Hidden Genius Project',
    isDarkMode: false,
  );
}
