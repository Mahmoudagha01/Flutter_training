import 'package:flutter/material.dart';

import 'package:flutter_1/appscreens/Screens.dart';
import 'package:device_preview/device_preview.dart';

main(List<String> args) {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
            primaryColor: Colors.orange[700], accentColor: Colors.white),
        debugShowCheckedModeBanner: false,
        home: Screens());
  }
}
