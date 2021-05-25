import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = Color(0xFF503E9D);
Color accentColor1 = Color(0xFF2C1F63);
Color accentColor2 = Color(0xFFFBD460);
Color accentColor3 = Color(0xFFADADAD);
Color orangeC = Color(0xFFFFA674);
Color greenC = Color(0xFF2FCF2F);
Color redC = Color(0xFFFF0000);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whiteTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle purpleTextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor3, fontWeight: FontWeight.w500);

TextStyle whiteNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.white);
TextStyle orangeNumberFont = GoogleFonts.openSans().copyWith(color: orangeC);
TextStyle redNumberFont = GoogleFonts.openSans().copyWith(color: redC);
TextStyle greenNumberFont = GoogleFonts.openSans().copyWith(color: greenC);
TextStyle purpleNumberFont = GoogleFonts.openSans().copyWith(color: mainColor);
