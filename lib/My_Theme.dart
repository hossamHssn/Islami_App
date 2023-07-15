import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color Lightcolor = Color(0xffB7935F);
  static ThemeData Lighttheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Lightcolor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: GoogleFonts.quicksand(
            fontSize: 12,
          ),
          unselectedLabelStyle: GoogleFonts.quicksand(
            fontSize: 12,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Lightcolor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        titleSmall: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Color(0xff242424),
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color:
        Colors.black,size: 30),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ));
  static ThemeData Darktheme = ThemeData();
}
