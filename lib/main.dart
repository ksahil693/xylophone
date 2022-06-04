import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  static AudioCache Player = AudioCache();

  void PlaySound(int soundNumber) {
    final Player = AudioCache();
    Player.play("note$soundNumber.wav");
  }

  Expanded PlayAudio({required Color color, required int number}) {
    return Expanded(
        child: FlatButton(
            child: Text(""),
            color: color,
            onPressed: () {
              PlaySound(number);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Xylophone")),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PlayAudio(color: Colors.red, number: 1),
          PlayAudio(color: Colors.orange, number: 2),
          PlayAudio(color: Colors.yellow, number: 3),
          PlayAudio(color: Colors.green, number: 4),
          PlayAudio(color: Colors.teal, number: 5),
          PlayAudio(color: Colors.blue, number: 6),
          PlayAudio(color: Colors.purple, number: 7)
        ],
      )),
    );
  }
}
