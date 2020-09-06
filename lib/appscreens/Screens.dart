import 'package:flutter/material.dart';
import 'package:flutter_1/appscreens/cart.dart';
import 'package:flutter_1/appscreens/favourite.dart';
import 'package:flutter_1/appscreens/homescreen.dart';
import 'package:flutter_1/appscreens/user.dart';

main(List<String> args) {
  runApp(Screens());
}

class Screens extends StatefulWidget {
  @override
  _Screens createState() => _Screens();
}
int _currentindex =0;
 List _screens=[
   HomeScreen(),Favourite(),Cart(),User()
 ];
class _Screens extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentindex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentindex ,
        onTap: (index){
         setState(() {
           _currentindex=index;
         });
        },
        type: BottomNavigationBarType.fixed,
        elevation:0 ,  
        selectedItemColor: Colors.orange[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            title: Text(
              "",
              style: TextStyle(fontSize: 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,size: 30,),
            title: Text(
              "",
              style: TextStyle(fontSize: 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,size: 30,),
            title: Text(
              "",
              style: TextStyle(fontSize: 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin,size: 30,),
            title: Text(
              "",
              style: TextStyle(fontSize: 0),
            ),
          ),
        ],
        
      ),
    );
  }
}
