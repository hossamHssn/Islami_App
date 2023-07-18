import 'package:eslamimid/My_Theme.dart';
import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowLanguageShetWidget extends StatelessWidget {
  const ShowLanguageShetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<Myprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pro.changLanguage("ar");
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Arabic",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: pro.LanguageCode == "ar"
                            ? Theme.of(context).primaryColor
                            : Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    Icons.done,
                    color: pro.LanguageCode == "ar"
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: ThemeData == ThemeMode.light
                ? Theme.of(context).primaryColor
                : MyTheme.yellowcolor,
            thickness: 1,
            endIndent: 50,
            indent: 50,
          ),
          InkWell(
            onTap: () {
              pro.changLanguage("en");
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "English",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: pro.LanguageCode == "en"
                            ? Theme.of(context).primaryColor
                            : Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.done,
                      color: pro.LanguageCode == "en"
                          ? Theme.of(context).primaryColor
                          : Colors.black)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
