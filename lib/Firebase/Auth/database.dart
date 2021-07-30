import 'package:firebase_database/firebase_database.dart';

class DataBaseService {
  final connection = FirebaseDatabase.instance.reference();
  DataBaseService({uid});
  String uid = '';
  Future<void> updateFlutterArticlesUser(user) async {
    final usersReference = connection.child('users').child(user.uid);
    usersReference.set({
      'uid': user.uid,
      'email': user.email,
      //add as many attributes as you want
    });
  }
}
