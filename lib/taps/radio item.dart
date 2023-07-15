import 'package:flutter/material.dart';

class Radio_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "اذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow_sharp,
                    size: 40,
                    color: Theme.of(context).primaryColor,
                  )),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pause,
                    size: 40,
                    color: Theme.of(context).primaryColor,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
