import 'package:flutter/cupertino.dart';

class Myprovider extends ChangeNotifier {
  String LanguageCode = "en";

  void changLanguage(String lang) {
    LanguageCode = lang;
    notifyListeners();
  }
}
