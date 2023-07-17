import 'package:eslamimid/Sura_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraContant extends StatefulWidget {
  static const String routename = "Suracontant";

  @override
  State<SuraContant> createState() => _SuraContantState();
}

class _SuraContantState extends State<SuraContant> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.SuraName,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              endIndent: 40,
              indent: 40,
              thickness: 2,
              color: Theme.of(context).primaryColor,
            ),
            itemBuilder: (context, index) {
              return Center(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      verses[index],
                      textAlign: TextAlign.center,
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
