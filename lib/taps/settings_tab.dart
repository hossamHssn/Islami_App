import 'package:eslamimid/My_Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../ShowModeShetWidget.dart';
import '../providers/Myprovider.dart';
import '../showLanguageshitwidget.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.settings,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : MyTheme.yellowcolor,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          InkWell(
            onTap: () {
              ShowLanguage(context);
            },
            child: Container(
              margin: EdgeInsets.only(right: 50, left: 50, top: 5, bottom: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : MyTheme.yellowcolor,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: provider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.LanguageCode == "en"
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 20,
                      color: provider.themeMode == ThemeMode.light
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          InkWell(
            onTap: () {
              Mode(context);
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(right: 50, left: 50, top: 5, bottom: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : MyTheme.yellowcolor,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: provider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.themeMode == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 20,
                      color: provider.themeMode == ThemeMode.light
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowLanguageShetWidget();
      },
    );
  }

  void Mode(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowModeShetWidget();
      },
    );
  }
}
