import 'package:eslamimid/api_maneger.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'radio item.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                "assets/images/radio_image.png",
              )),
          Expanded(
            flex: 1,
            child: FutureBuilder(
                future: ApiManeger.getRadios(),
                builder: (context, Snapshot) {
                  if (Snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                      strokeWidth: 3,
                    );
                  } else if (Snapshot.hasError) {
                    return Center(
                      child: Text("somthing went wrong"),
                    );
                  }
                  var radios = Snapshot.data ?? [];
                  return ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Radio_Item(radios[index], audioPlayer);
                    },
                    itemCount: radios.length,
                  );
                }),
          )
        ],
      ),
    );
  }
}
