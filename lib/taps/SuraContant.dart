import 'package:eslamimid/My_Theme.dart';
import 'package:eslamimid/Sura_model.dart';
import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraContant extends StatefulWidget {
  static const String routename = "Suracontant";

  @override
  State<SuraContant> createState() => _SuraContantState();
}

class _SuraContantState extends State<SuraContant> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light
                  ? "assets/images/bg3.png"
                  : "assets/images/bg.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.SuraName,
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
                      verses[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: provider.themeMode == ThemeMode.light
                              ? Colors.white
                              : MyTheme.yellowcolor),
                    )),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadfile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
    print(verses);
  }
}
