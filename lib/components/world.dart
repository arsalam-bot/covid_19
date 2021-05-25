import 'package:flutter/material.dart';
import 'package:covid_19/akun.dart';
import 'package:covid_19/theme.dart';

class World extends StatelessWidget {
  final data;

  World({
    Key key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFF2C1F63),
          ),
          SafeArea(
              child: Container(
            color: Color(0xFFFCFCFC),
          )),
          ListView(
            children: <Widget>[
              // Note: Header
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2C1F63),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                padding: EdgeInsets.fromLTRB(24, 20, 24, 30),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hai Kamu,",
                          style: whiteTextFont.copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Jaga kesehatan yaa..!",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      width: 74,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Akun();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xFF5F558B), width: 1)),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/user_pic.png"))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Note: Covid Data
              Container(
                padding: EdgeInsets.fromLTRB(24, 30, 24, 20),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.place,
                      color: mainColor,
                    ),
                    Text(
                      "Data Global",
                      style: blackTextFont.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 24, left: 24),
                child: Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Container(
                            height: 105,
                            width: 146,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                      offset: Offset(0, 5))
                                ]),
                            child: Padding(
                              padding: EdgeInsets.only(top: 13, bottom: 13),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/circle_orange.png")),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    data.worldd.confirmed,
                                    style: orangeNumberFont.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Infected",
                                    style: greyTextFont.copyWith(fontSize: 14),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 105,
                            width: 146,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                      offset: Offset(0, 5))
                                ]),
                            child: Padding(
                              padding: EdgeInsets.only(top: 13, bottom: 13),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/circle_red.png")),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    data.worldd.deaths,
                                    style: redNumberFont.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Deaths",
                                    style: greyTextFont.copyWith(fontSize: 14),
                                  )
                                ],
                              ),
                            ))
                      ],
                    )),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, right: 24, left: 24, bottom: 30),
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 105,
                        width: 146,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  offset: Offset(0, 5))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(top: 13, bottom: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/circle_green.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                data.worldd.recovered,
                                style: greenNumberFont.copyWith(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Recovered",
                                style: greyTextFont.copyWith(fontSize: 14),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 105,
                        width: 146,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  offset: Offset(0, 5))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(top: 13, bottom: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/circle_purple.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "data null",
                                style: purpleNumberFont.copyWith(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Monitoring",
                                style: greyTextFont.copyWith(fontSize: 14),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              // Note: Preventions
              Container(
                padding: EdgeInsets.only(left: 24, right: 24, bottom: 12),
                child: Text(
                  " Preventions",
                  style: blackTextFont.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 4),
                          height: 94,
                          width: 94,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/social_distancing.png")),
                          ),
                        ),
                        Text("Social Distancing",
                            style: blackTextFont.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w300))
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 4),
                          height: 94,
                          width: 94,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/stay_home.png")),
                          ),
                        ),
                        Text(
                          "Stay at Home",
                          style: blackTextFont.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 4),
                          height: 94,
                          width: 94,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/wash_hand.png")),
                          ),
                        ),
                        Text("Wash Hand",
                            style: blackTextFont.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w300))
                      ],
                    )
                  ],
                ),
              ),
              // Note: Footer
              Container(
                margin: EdgeInsets.fromLTRB(24, 30, 24, 30),
                height: 115,
                width: 312,
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(0, 5))
                    ]),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: Container(
                        height: 115,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icon_dokter.png"))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Emergency Call",
                            style: whiteTextFont.copyWith(fontSize: 18),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "555 - 613 - 20",
                            style: whiteNumberFont.copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
