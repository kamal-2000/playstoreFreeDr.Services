import 'splash.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        title: "FreeDr.Services",
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Splash());
  }
}
