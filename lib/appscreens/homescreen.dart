import 'package:flutter/material.dart';
import 'package:flutter_1/appscreens/cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


main(List<String> args) {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> _list = [
    {
      "text1": "Pomegrante",
      "price": 4.21,
      "selected": true,
      "image":
          "https://image.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg"
    },
    {
      "text1": "Orange Fruit",
      "price": 3.52,
      "selected": false,
      "image":
          "https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg?size=626&ext=jpg"
    },
    {
      "text1": "Best Mango",
      "price": 6.31,
      "selected": false,
      "image":
          "https://img.freepik.com/free-vector/fresh-mango-isolated-white-background_29190-1450.jpg?size=626&ext=jpg"
    },
    {
      "text1": "Coconut Fruit",
      "price": 5.25,
      "selected": false,
      "image":
          "https://img.freepik.com/free-photo/coconut-isolated-white-background_2829-6287.jpg?size=338&ext=jpg"
    }
  ];
  int _currentindex = 0;

 _buildGridview(
      {String text1, double price, String image, int index, bool selected}) {
    return InkWell(
      onTap: () {
        setState(() {
          _list[_currentindex]["selected"] = false;
          _currentindex = index;
          _list[_currentindex]["selected"] = true;
        });
      },
      child:Container(
          
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 0.3)
            ],
            color: selected == true
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 5),
                child: Row(
                  children: <Widget>[
                    Text(
                      text1,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(60),
                          fontWeight: FontWeight.bold,
                          color:
                              selected == true ? Colors.white : Colors.black),
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
                        color: selected == true ? Colors.white : Colors.black,
                        fontSize: ScreenUtil().setSp(50),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setWidth(300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(image),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  //margin: EdgeInsets.only(right: 0, top: 18.6, left: 5),
                  width: ScreenUtil().setWidth(110),
                  height: ScreenUtil().setHeight(110),
                  decoration: BoxDecoration(
                      color:
                          selected == true ? Colors.white : Colors.orange[700],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          bottomRight: Radius.circular(15))),
                  child: Center(child: Icon(Icons.add)),
                ),
              )
            ],
          ),
        ),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
var _width =MediaQuery.of(context).size.width/2;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
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
        children: [
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
                  width: MediaQuery.of(context).size.width / 8,
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
            width:MediaQuery.of(context).size.width,
            height: ScreenUtil().setHeight(500),
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
                      fontSize: ScreenUtil().setSp(50),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pacifico"),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: ScreenUtil().setSp(50), fontFamily: "Pacifico"),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:0.69
                       ),
              itemBuilder: (context, index) {
                return _buildGridview(
                    text1: _list[index]["text1"],
                    price: _list[index]["price"],
                    image: _list[index]["image"],
                    selected: _list[index]["selected"],
                    index: index);
              },
              
            ),
          )
        ],
      ),
    );
  }
}
