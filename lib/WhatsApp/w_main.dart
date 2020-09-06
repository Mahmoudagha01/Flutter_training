import 'package:flutter/material.dart';
import 'package:flutter_1/WhatsApp/w_home.dart';
main(List<String> args) {
  runApp(WhatsApp());
}

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: W_home(),
    );
  }
}