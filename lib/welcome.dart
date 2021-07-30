import 'package:flutter/material.dart';
import 'package:motivation_project/login/login.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Motivation'),
            ),
            body: Center(
                child: Column(children: <Widget>[
              Image.asset(
                "images/workout.png",
                height: 750,
                width: 950,
              ),
              new MaterialButton(
                color: Colors.lightBlue[200],
                textColor: Colors.white,
                minWidth: 200,
                child: Text(
                  'Get Started Now!',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              )
            ]))));
  }
}
