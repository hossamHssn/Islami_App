import 'package:eslamimid/taps/AhadethTab.dart';
import 'package:eslamimid/taps/Quran.dart';
import 'package:eslamimid/taps/RadioTab.dart';
import 'package:eslamimid/taps/sebhaTab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int index=0;
List<Widget>tabs=[QuranTab(),AhadethTab(),RadioTab(),SebhaTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          fit: BoxFit.fill,
        ),
        Container(
          width: double.infinity,
          child: Scaffold(
            appBar: AppBar(
              title:
                  Text("islami", style: Theme.of(context).textTheme.titleSmall),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index=value;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "Quran",backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "sebha",backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                    label: "Radio",backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                        "assets/images/quran-quran-svgrepo-com.png")),
                    label: "Ahadeth",backgroundColor: Theme.of(context).primaryColor),
              ],
            ),
            body: tabs[index],
            ),
          ),

      ],
    );
  }
}
