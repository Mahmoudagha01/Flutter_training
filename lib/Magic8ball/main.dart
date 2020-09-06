import 'package:flutter/material.dart';
import 'dart:math';
main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentball;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
setState(() {
  _currentball=Random().nextInt(5)+1;
});
              }, 
              child: Image.asset("images/ball$_currentball.png")),
        ),
      ),
    );
  }
}
