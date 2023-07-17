import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
   SebhaTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
int counter=0;
int numtas=0;
String tasbeh="سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              counter++;
              numtas++;
              if(counter==32){
                tasbeh="الحمد لله";
                numtas=0;
              }else if(counter==64){
                tasbeh="الله أكبر";
                numtas=0;
              }else if(counter==96){
                tasbeh="لااله الا الله";
                numtas=0;
              }else if(counter==128){
                counter=0;
                numtas=0;
                tasbeh="سبحان الله";
              }
              setState(() {

              });
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40),
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Center(
                      child: Image.asset(
                    "assets/images/head_sebha_logo.png",
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Center(
                      child: Image.asset(
                        "assets/images/body_sebha_logo.png",
                    height: 150,
                    width: 150,
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              AppLocalizations.of(context)!.sebha,
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.6),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "$numtas",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "$tasbeh",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
