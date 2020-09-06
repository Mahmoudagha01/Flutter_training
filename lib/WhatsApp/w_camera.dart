import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

main(List<String> args) {
  runApp(W_Camera());
}

class W_Camera extends StatefulWidget {
  @override
  _W_CameraState createState() => _W_CameraState();
}

class _W_CameraState extends State<W_Camera> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        
        children: <Widget>[
        
          RaisedButton(
              child: Text("Add Photo"),
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: () {
               
                  getImage();
                
              }),
            _image==null?Center():   Container(
            margin: EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width / 2,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(image: FileImage(_image),fit: BoxFit.cover ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.tealAccent),
          ),
        ],
      ),
    ));
  }
}
