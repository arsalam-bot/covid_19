import 'dart:convert';

import 'package:covid_19/home.dart';
import 'package:covid_19/signup.dart';
import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String msg = '';
  Future userLogin() async {
    // Getting value from Controller
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // SERVER LOGIN API URL
    var url = 'http://192.168.0.102/covid_19/login_user.php';

    // Store all data with Param Name.
    var data = {'email': email, 'password': password};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If the Response Message is Matched.
    if (message == 'Login Matched') {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      });
    } else {
      setState(() {
        msg = 'Gagal login';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo.png"))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 24),
                  child: Text(
                    "Keep Safety!",
                    style: blackTextFont.copyWith(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Email Adress",
                      hintText: "Email Adress"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      hintText: "Password"),
                ),
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Color(0xFF503E9D),
                    elevation: 0,
                    onPressed: userLogin),
                SizedBox(
                  height: 40,
                ),
                Text(msg),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Start fresh now? ",
                      style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUp();
                        }));
                      },
                      child: Text(
                        " SignUp",
                        style: purpleTextFont,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
