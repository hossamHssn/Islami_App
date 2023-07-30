import 'package:eslamimid/My_Theme.dart';
import 'package:eslamimid/hadeth_content.dart';
import 'package:eslamimid/home_screen.dart';
import 'package:eslamimid/providers/Myprovider.dart';
import 'package:eslamimid/taps/Splash_Screen.dart';
import 'package:eslamimid/taps/SuraContant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<Myprovider>(
      create: (context) => Myprovider(), child: Myapplication()));
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.LanguageCode),
      supportedLocales: [Locale("en"), Locale("ar")],
      themeMode: provider.themeMode,
      darkTheme: MyTheme.Darktheme,
      theme: MyTheme.Lighttheme,
      initialRoute: SplashScreen.Routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SuraContant.routename: (context) => SuraContant(),
        Hadethcontent.routename: (context) => Hadethcontent(),
        SplashScreen.Routename: (context) => SplashScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
