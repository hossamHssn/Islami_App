import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'My_Theme.dart';

class ShowModeShetWidget extends StatefulWidget {
  @override
  State<ShowModeShetWidget> createState() => _ShowModeShetWidgetState();
}

class _ShowModeShetWidgetState extends State<ShowModeShetWidget> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<Myprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pro.ChangeMode(ThemeMode.light);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: pro.themeMode == ThemeMode.light
                            ? Theme.of(context).primaryColor
                            : Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    Icons.done,
                    color: ThemeMode == ThemeMode.light
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: pro.themeMode == ThemeMode.light
                ? MyTheme.Lightcolor
                : MyTheme.yellowcolor,
            thickness: 1,
            endIndent: 50,
            indent: 50,
          ),
          InkWell(
            onTap: () {
              pro.ChangeMode(ThemeMode.dark);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: pro.themeMode == ThemeMode.dark
                            ? Theme.of(context).primaryColor
                            : Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.done,
                      color: pro.themeMode == ThemeMode.dark
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
