import 'package:eslamimid/My_Theme.dart';
import 'package:eslamimid/home_screen.dart';
import 'package:eslamimid/taps/SuraContant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.Darktheme,
      theme: MyTheme.Lighttheme,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SuraContant.routename: (context) => SuraContant(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
