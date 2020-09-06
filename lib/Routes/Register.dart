import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(Register());
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Container(
            width: 250,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
          
            ),
            child: Center(child: Text("Register Here"),),
          )
          ),
        ],
      ),
    );
  }
}
