import 'package:eslamimid/hadeth_model.dart';
import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'My_Theme.dart';

class Hadethcontent extends StatelessWidget {
  static const String routename = "hadeth";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethModel;
    var provider = Provider.of<Myprovider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light
                  ? "assets/images/bg3.png"
                  : "assets/images/bg.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        body: Card(
          color: provider.themeMode == ThemeMode.light
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColorDark,
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              endIndent: 40,
              indent: 40,
              thickness: 2,
              color: provider.themeMode == ThemeMode.light
                  ? MyTheme.darkcolor
                  : MyTheme.yellowcolor,
            ),
            itemBuilder: (context, index) {
              return Center(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      args.content[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: provider.themeMode == ThemeMode.light
                              ? Colors.white
                              : MyTheme.yellowcolor),
                    )),
              );
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}
