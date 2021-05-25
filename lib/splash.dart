import 'package:covid_19/signin.dart';
import 'package:covid_19/signup.dart';
import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 48, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Covid",
                    style: blackTextFont.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "-19",
                    style: whiteNumberFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Text("Get information about\nCovid-19. Keep Safety !!",
                style: greyTextFont.copyWith(fontSize: 16),
                textAlign: TextAlign.center),
            Container(
              width: 250,
              height: 46,
              margin: EdgeInsets.only(top: 70, bottom: 20),
              child: RaisedButton(
                  child: Text(
                    "SignUp",
                    style: whiteTextFont.copyWith(fontSize: 16),
                  ),
                  color: Color(0xFF503E9D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account? ",
                  style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                  },
                  child: Text(
                    "SignIn",
                    style: purpleTextFont,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
