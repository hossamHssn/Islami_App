import 'package:eslamimid/providers/Myprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  runApp(ChangeNotifierProvider<Myprovider>(
      create: (context) => Myprovider(), child: MyApplication()));
}
