import 'package:eslamimid/My_Theme.dart';
import 'package:eslamimid/Sura_model.dart';
import 'package:eslamimid/providers/Myprovider.dart';
import 'package:eslamimid/taps/SuraContant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class QuranTab extends StatelessWidget {
  List<String> SuraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          Divider(
            thickness: 2,
            color: provider.themeMode == ThemeData.dark
                ? Theme.of(context).primaryColor
                : MyTheme.yellowcolor,
          ),
          Text(
            AppLocalizations.of(context)!.suraNames,
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Divider(
            thickness: 2,
            color: provider.themeMode == ThemeData.light
                ? Theme.of(context).primaryColor
                : MyTheme.yellowcolor,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: provider.themeMode == ThemeData.light
                    ? Theme.of(context).primaryColor
                    : MyTheme.yellowcolor,
                indent: 35,
                endIndent: 35,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraContant.routename,
                        arguments: SuraModel(SuraName[index], index));
                  },
                  child: Center(
                      child: Text(
                        SuraName[index],
                        style: Theme.of(context).textTheme.bodyMedium,
                      )),
                );
              },
              itemCount: SuraName.length,
            ),
          )
        ],
      ),
    );
  }
}
