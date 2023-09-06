import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_screen.dart';
import '../providers/Myprovider.dart';

class SplashScreen extends StatelessWidget {
  static const String Routename = "/";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routename);
    });
    return Stack(
      children: [
        Image.asset(provider.themeMode == ThemeMode.light
            ? "assets/images/splash.png"
            : "assets/images/splash – 1.png")
      ],
    );
  }
}
