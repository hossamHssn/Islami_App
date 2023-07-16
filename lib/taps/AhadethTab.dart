import 'package:flutter/material.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            "الاحاديث",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
