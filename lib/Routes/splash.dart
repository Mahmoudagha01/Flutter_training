import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_1/Routes/home.dart';
main(List<String> args) {
  runApp(Splash());
}

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), 
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> null));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color: Colors.blue,
       child: Center(child: Image.asset("images/diamond.png",height: 200,)
     ), 
    ),
    );
  }
}