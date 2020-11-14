import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundno) {
    final player = AudioCache();
    player.play('note$soundno.wav');
  }


  Expanded buildkey({int soundno, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundno);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children : [
              buildkey(color: Colors.red , soundno: 1),
              buildkey(color: Colors.orange , soundno: 2),
              buildkey(color: Colors.yellow , soundno: 3),
              buildkey(color: Colors.green, soundno: 4),
              buildkey(color: Colors.teal , soundno: 5),
              buildkey(color: Colors.blue , soundno: 6),
              buildkey(color: Colors.purple , soundno: 7),
  ]
          ),
        ),
      ),
    );
  }
}
