import 'package:flutter/material.dart';
import 'package:flutter_1/appscreens/cart.dart';

main(List<String> args) {
  runApp(User());
}

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  Widget _buildCard(String text1, double price, String image) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 0.1)
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 5),
            child: Row(
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Row(
              children: <Widget>[
                Text(
                  "Only \$$price",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(image),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 0, top: 18.6, left: 5),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.orange[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    bottomRight: Radius.circular(15))),
            child: Center(child: Icon(Icons.add)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading: Icon(
          Icons.menu,
          size: 28,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                size: 28,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(15, 8, 15, 8),
                width: MediaQuery.of(context).size.width / 1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                      hintText: "Search something",
                      prefixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: null),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 9),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3)],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.tune,
                        size: 30,
                      ),
                      onPressed: () {}))
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://image.freepik.com/free-photo/background-from-fresh-red-strawberries_80510-442.jpg",
                    ),
                    fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Popular Foods",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pacifico"),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 15, fontFamily: "Pacifico"),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 2,childAspectRatio: 0.8,children: <Widget>[
 _buildCard("Pomegrante", 4.21,
                    "https://image.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg"),
             _buildCard("Mango", 60.70,
                    "https://image.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg"),
                     _buildCard("Orange", 10.89,
                    "https://image.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg"),
                     _buildCard("Apple", 45.25,
                    "https://image.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg"),
            ],),
          ),
        ],
      ),
    );
  }
}
