import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'My_Theme.dart';
import 'config/routes.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return MaterialApp(
      theme: MyTheme.Lighttheme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
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
    );
  }
}
