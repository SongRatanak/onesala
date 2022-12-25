import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonesala/Page/slashscreen.dart';

void main() {
  runApp(MyApp());
}

Widget MyApp() {
  return MaterialApp(
    home: SlassScreen(),
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
  );
}