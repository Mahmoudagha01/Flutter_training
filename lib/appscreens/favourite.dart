import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(Favourite());
}

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  double price = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width / 2.2,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Text("Only"),
            ),
          ]),
    );
  }
}
