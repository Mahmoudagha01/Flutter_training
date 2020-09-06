import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

main(List<String> args) {
  runApp(Cart());
}

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Map> _list = [
    {
      "text1": "Coconut Fruit",
      "price": 5.25,
      "image":
          "https://img.freepik.com/free-photo/coconut-isolated-white-background_2829-6287.jpg?size=338&ext=jpg"
    },
    {
      "text1": "Banana",
      "price": 12.79,
      "image":
          "https://img.freepik.com/free-photo/banana-bunch-bananas-isolated-white-background_88281-98.jpg?size=626&ext=jpg"
    },
    {
      "text1": "Orange Fruit",
      "price": 3.52,
      "image":
          "https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg?size=626&ext=jpg"
    },
    {
      "text1": "Pomegrante",
      "price": 4.21,
      "image":
          "https://image.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg"
    },
    {
      "text1": "Best Mango",
      "price": 6.31,
      "image":
          "https://img.freepik.com/free-vector/fresh-mango-isolated-white-background_29190-1450.jpg?size=626&ext=jpg"
    },
  ];
  Widget _buildcard({
    String text1,
    double price,
    String image,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
            
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*0.15,
              height: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5,bottom: 5),
              width:MediaQuery.of(context).size.width*0.75,
              height: 105,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 10, bottom: 0, right: 0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                text1,
                                style: TextStyle(
                                    fontFamily: "Pacifico",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$$price",
                                style: TextStyle(),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: RaisedButton.icon(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(5)),
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.orange[600],
                              ),
                              label: Text("Remove")),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8, top: 8),
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 0, top: 8, left: 8),
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                          width: 119,
                          margin: EdgeInsets.only(right:0, top: 20),
                          child: RaisedButton(
                            color: Colors.orange[600],
                            onPressed: () {},
                            child: Text(
                              "Order Now",
                              style: TextStyle(fontSize: 15),
                            ),
                            textColor: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
       
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart Items",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white24,
        centerTitle: true,
        elevation: 0,
        leading: Container(
            margin: EdgeInsets.all(8),
            width: 10,
            height: 0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {})),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            width: 45,
            height: 0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            child: IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(color: Colors.white24),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildcard(
                  text1: _list[index]["text1"],
                  price: _list[index]["price"],
                  image: _list[index]["image"],
                );
              },
            ),
          ),
         Expanded(child: ListView(children: [
            Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text("Subtotal"), Text("\$93.89")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text("Delivery Fee"), Text("\$3.50")],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text("Tax"), Text("\$4.51")],
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text("Total Amount"), Text("\$101.90")],
            ),
          ),
          Container(
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Check Out Now",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.orange,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5)),
              ))
         ],))
        ],
      ),
    );
  }
}
