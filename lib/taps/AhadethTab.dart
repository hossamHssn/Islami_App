import 'package:eslamimid/hadeth_content.dart';
import 'package:eslamimid/hadeth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadhadethFile();
    }
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/images/hadeth_logo.png",
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            "Ahadeth",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Hadethcontent.routename,
                        arguments: allAhadeth[index]);
                  },
                  child: Text(
                    allAhadeth[index].title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: allAhadeth.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                thickness: 2,
                endIndent: 35,
                indent: 35,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  void loadhadethFile() async {
    rootBundle.loadString("assets/files/ahadeth .txt").then((value) {
      List<String> AhadethContent = value.split("#");
      // for (int i = 0; i < AhadethContent.length; i++) {
      //   int lastIndex = AhadethContent[i].indexOf("\n");
      //
      //   String title = AhadethContent[i].trim().substring(0, lastIndex);
      //
      //
      //   print(title);
      //
      //  String content = AhadethContent[i].trim().substring(lastIndex + 1);
      //   HadethModel hadethModel=HadethModel(title,content);
      //   print(content);
      //   allAhadeth.add(hadethModel);
      // }

      for (int i = 0; i < AhadethContent.length; i++) {
        List<String> lines = AhadethContent[i].trim().split("\n");
        String title = lines[0];
        lines.removeAt(0);
        List<String> content = lines;
        print(title);
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }
}
