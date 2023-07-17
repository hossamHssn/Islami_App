import 'package:eslamimid/My_Theme.dart';
import 'package:eslamimid/hadeth_content.dart';
import 'package:eslamimid/home_screen.dart';
import 'package:eslamimid/taps/SuraContant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale("en"),
      supportedLocales: [Locale("en"), Locale("ar")],
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.Darktheme,
      theme: MyTheme.Lighttheme,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SuraContant.routename: (context) => SuraContant(),
        Hadethcontent.routename: (context) => Hadethcontent(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
