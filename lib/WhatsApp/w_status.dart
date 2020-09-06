import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(W_Status());
}
class W_Status extends StatefulWidget {
  @override
  _W_StatusState createState() => _W_StatusState();
}

class _W_StatusState extends State<W_Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: 250,height: 250,color: Colors.yellowAccent,),
    );
  }
}