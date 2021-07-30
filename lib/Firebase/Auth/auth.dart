import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:motivation_project/Firebase/Auth/database.dart';
import 'package:motivation_project/Firebase/Auth/myAppUser.dart';
import 'package:motivation_project/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create MyAppUser from a Firebase User

  MyAppUser? _userFromFirebaseUser(User? user) {
    user != null ? MyAppUser(uid: user.uid, email: user.email) : null;
  }

  //create Firebase User
  Future registerFirebaseUser(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //login Firebase User
  Future loginFirebaseUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOutFirebaseUser() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Stream<MyAppUser?> get user =>
      _auth.authStateChanges().map(_userFromFirebaseUser);
}
