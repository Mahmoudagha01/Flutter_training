// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// main(List<String> args) {
//   runApp(MapScreen());
// }
// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   Completer<GoogleMapController> _controler = Completer();
//   double _currentlat;
//   double _currentlong;

//   @override
//   void initState() {
//     _getCurrentLocation();
//     super.initState();
//   }

//   _getCurrentLocation() async {
//     Position position =
//        هتتغير للاصدار الاقدمawait getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       _currentlat = position.latitude;
//       _currentlong = position.longitude;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: _currentlat==null? CircularProgressIndicator() : GoogleMap(
//                myLocationButtonEnabled: true,
//       myLocationEnabled: true,
//                 mapType: MapType.normal,
//                 initialCameraPosition: CameraPosition(
//                     target: LatLng(_currentlat,_currentlong), zoom: 15),
//                      onMapCreated: (controler) {
//                   _controler.complete(controler);
//                 },
//               ),
//       ),
//     );
//   }
// }



