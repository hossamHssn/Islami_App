import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "Settings",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}
