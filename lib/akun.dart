import 'package:covid_19/splash.dart';
import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Akun Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Log Out"),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Splash();
              }));
            }),
      ),
    );
  }
}
