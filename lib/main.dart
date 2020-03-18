import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // Method used to play sound
  void playSound(int soundNumber) {
    // Declare audio player
    final player = AudioCache();
    // Play the note, dependent on the number being pressed
    player.play('note$soundNumber.wav');
  }

  // Each key contains a colour
  // and an onPressed method for action
  // OnPressed, the wav file will sound
  Expanded buildKey({Color keyColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone'),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // Each key is passed with a specific value, corresponding to the
            // particular wav file.
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, soundNumber: 1),
              buildKey(keyColor: Colors.orange, soundNumber: 2),
              buildKey(keyColor: Colors.yellow, soundNumber: 3),
              buildKey(keyColor: Colors.green, soundNumber: 4),
              buildKey(keyColor: Colors.blue, soundNumber: 5),
              buildKey(keyColor: Colors.teal, soundNumber: 6),
              buildKey(keyColor: Colors.purple, soundNumber: 7),
              buildKey(keyColor: Colors.brown, soundNumber: 8),
            ],
          ),
        ),
      ),
    );
  }
}
