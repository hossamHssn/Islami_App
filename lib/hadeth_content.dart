import 'package:eslamimid/hadeth_model.dart';
import 'package:flutter/material.dart';

class Hadethcontent extends StatelessWidget {
  static const String routename = "hadeth";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
    );
  }
}
