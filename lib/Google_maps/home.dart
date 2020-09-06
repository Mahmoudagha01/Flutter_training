
import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';

main(List<String> args) {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _openMap() async {
    LocationResult result =await showLocationPicker(context, '');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InkWell(
          onTap: (){
            _openMap();
          },
                  child: Center(
            
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Colors.teal),
                child: Center(
                  child: Text("Go To Map"),
                ),
              ),
            ),
        ),
      
      ),
    );
  }
}
