import 'package:eslamimid/model/radio_response.dart';
import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';

class Radio_Item extends StatelessWidget {
  Radios radio;
  AudioPlayer audioPlayer;

  Radio_Item(this.radio, this.audioPlayer);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            radio.name ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await audioPlayer.play(UrlSource(radio.radioUrl ?? ""));
                  },
                  icon: Icon(
                    Icons.play_arrow_sharp,
                    size: 40,
                    color: provider.themeMode == ThemeData.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                  )),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () async {
                    await audioPlayer.pause();
                  },
                  icon: Icon(
                    Icons.pause,
                    size: 40,
                    color: provider.themeMode == ThemeData.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
