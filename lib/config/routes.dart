import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../hadeth_content.dart';
import '../home_screen.dart';
import '../taps/Splash_Screen.dart';
import '../taps/SuraContant.dart';

class Routes {
  static const String SplashScreen = "/";
  static const String HomeScreen = "home";
  static const String SuraContant = "Suracontant";
  static const String Hadethcontent = "hadeth";
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.SplashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case Routes.HomeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case Routes.SuraContant:
        return MaterialPageRoute(
          builder: (context) => SuraContant(),
        );
      case Routes.Hadethcontent:
        return MaterialPageRoute(
          builder: (context) => Hadethcontent(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Center(child: Text("Un Define Route"))],
        ),
      );
}
