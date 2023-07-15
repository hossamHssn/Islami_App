import 'package:flutter/material.dart';

import 'radio item.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

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
            child: ListView.separated(
              physics: PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Radio_Item();
              },
              itemCount: 6,
              separatorBuilder: (context, index) => SizedBox(
                width: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
