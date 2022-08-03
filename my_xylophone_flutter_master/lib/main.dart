import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int notenumber) {
    final player = AudioCache();
    player.play('note$notenumber.wav');
  }

  Widget expaneddBotton(int notenum, Color buttonColor) {
    return (Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          playSound(notenum);
        },
        child: Text(' '),
      ),
    ));
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
              expaneddBotton(1, Colors.red),
              expaneddBotton(2, Colors.orange),
              expaneddBotton(3, Colors.yellow),
              expaneddBotton(4, Colors.green),
              expaneddBotton(5, Colors.teal),
              expaneddBotton(6, Colors.blue),
              expaneddBotton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
