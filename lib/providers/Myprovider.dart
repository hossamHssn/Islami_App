import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myprovider extends ChangeNotifier {
  String LanguageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  void changLanguage(String lang) {
    LanguageCode = lang;
    notifyListeners();
  }

  void ChangeMode(ThemeMode Mode) {
    themeMode = Mode;
    notifyListeners();
  }
}
