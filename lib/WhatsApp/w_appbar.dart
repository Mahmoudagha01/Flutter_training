import 'package:flutter/material.dart';

Widget W_appbar({BuildContext context}) {
  return AppBar(
    actions: <Widget>[
      Icon(Icons.search),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
        child: Icon(Icons.more_vert),
      )
    ],
    title: Text(
      "WhatsApp",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.teal,
    bottom: TabBar(
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Container(
              width: MediaQuery.of(context).size.width / 4 - 20,
              child: Tab(text: "CHATS")),
          Container(
              width: MediaQuery.of(context).size.width / 4 - 20,
              child: Tab(text: "STATUS")),
          Container(
              width: MediaQuery.of(context).size.width / 4 - 20,
              child: Tab(text: "CALLS")),
        ]),
  );
}
