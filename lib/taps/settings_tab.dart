import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../showLanguageshitwidget.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Settings",
                style: GoogleFonts.elMessiri(fontSize: 25),
              ),
            ),
            Text(
              "Language",
              style: GoogleFonts.elMessiri(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  ShowLanguage(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      provider.LanguageCode == "en" ? "English" : "Arabic",
                      style: GoogleFonts.elMessiri(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Theme",
              style: GoogleFonts.elMessiri(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Light",
                    style: GoogleFonts.elMessiri(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
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
}
