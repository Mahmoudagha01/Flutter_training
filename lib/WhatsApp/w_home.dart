import 'package:flutter/material.dart';
import 'package:flutter_1/WhatsApp/w_Chat.dart';
import 'package:flutter_1/WhatsApp/w_appbar.dart';
import 'package:flutter_1/WhatsApp/w_calls.dart';
import 'package:flutter_1/WhatsApp/w_camera.dart';
import 'package:flutter_1/WhatsApp/w_status.dart';

main(List<String> args) {
  runApp(W_home());
}

class W_home extends StatefulWidget {
  @override
  _W_homeState createState() => _W_homeState();
}

class _W_homeState extends State<W_home> {
  var mykey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        key: mykey,
        length: 4,
        child: Scaffold(
            appBar: W_appbar(context: context),
            body: TabBarView(
                children: [W_Camera(), W_Chat(), W_Status(), W_Calls()])));
  }
}
