import 'dart:convert';

import 'package:covid_19/components/world.dart';
import 'package:covid_19/splash.dart';
import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String msg = '';
  Future userRegistration() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // SERVER API URL
    var url = 'http://192.168.0.102/covid_19/register_user.php';

    // Store all data with Param Name.
    var data = {'name': name, 'email': email, 'password': password};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);
    if (!(message ==
        "Email Already Exist, Please Try Again With New Email Address..!")) {
      setState(() {
        msg = 'Berhasil register';
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => World()));
      });
    } else {
      msg = 'Email sudah digunakan';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 22),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Splash();
                              }));
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            )),
                      ),
                      Center(
                        child: Text(
                          "Create New\nAccount",
                          style: blackTextFont.copyWith(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/user_pic.png"))),
                ),
                SizedBox(
                  height: 36,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Full Name",
                      hintText: "Full Name"),
                ),
                SizedBox(
                  height: 16,
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
                  height: 102,
                ),
                FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Color(0xFF503E9D),
                    elevation: 0,
                    onPressed: userRegistration),
                Text(msg)
              ],
            )
          ],
        ),
      ),
    );
  }
}
