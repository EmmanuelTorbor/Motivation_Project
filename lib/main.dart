import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motivation_project/Firebase/Auth/auth.dart';
import 'package:motivation_project/login/login.dart';
import 'package:motivation_project/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initialized = false;
  bool _error = false;
//connecting to firebase
  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      print(e.toString());
      _error = true;
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return Container(child: Text('Failed to connect'));
    }

    if (!_initialized) {
      return Container(
        child: Text('Connection'),
      );
    }

    return Streamer();
  }

  // Widget build(BuildContext context) {
  //   return new MaterialApp(
  //     home: Welcome(),
  //   );
  // }
}

class Streamer extends StatefulWidget {
  const Streamer({Key? key}) : super(key: key);

  @override
  _StreamerState createState() => _StreamerState();
}

class _StreamerState extends State<Streamer> {
  final _streamProvider = AuthService().user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
          stream: _streamProvider,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return snapshot.connectionState == ConnectionState.waiting
                  ? Container(child: Text('Still waiting for data'))
                  : Container(child: Welcome());
            } else {
              return Container(child: LoginPage());
            }
          }),
    );
  }
}
