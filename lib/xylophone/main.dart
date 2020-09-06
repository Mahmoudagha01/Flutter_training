import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playsound(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Widget _buildxylophone({Color color, int soundnum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildxylophone(color: Colors.red, soundnum: 1),
              _buildxylophone(color: Colors.orange, soundnum: 2),
              _buildxylophone(color: Colors.yellow, soundnum: 3),
              _buildxylophone(color: Colors.green, soundnum: 4),
              _buildxylophone(color: Colors.teal, soundnum: 5),
              _buildxylophone(color: Colors.blue, soundnum: 6),
              _buildxylophone(color: Colors.purple, soundnum: 7)
            ],
          ),
        ),
      ),
    );
  }
}
