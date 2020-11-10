import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color color, int elementNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();

          player.play('note$elementNumber.wav');
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
            children: [
              buildKey(Colors.grey[900], 1),
              buildKey(Colors.grey[800], 2),
              buildKey(Colors.grey[700], 3),
              buildKey(Colors.grey[600], 4),
              buildKey(Colors.grey[500], 5),
              buildKey(Colors.grey[400], 6),
              buildKey(Colors.grey[300], 7),
            ],
          ),
        ),
      ),
    );
  }
}
