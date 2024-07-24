import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playing(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

Widget buildkey(int i,Color clr){
    return Expanded(
      child: TextButton(
        child: Container(
          decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {
          playing(i);
        },
      ),
    );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              '---- Xylophone ----',
              style: TextStyle(
                fontFamily: 'Sevillana',
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildkey(1,Colors.red),
                buildkey(2,Colors.orange),
                buildkey(3,Colors.yellow),
                buildkey(4,Colors.green),
                buildkey(5,Colors.teal),
                buildkey(6,Colors.blue),
                buildkey(7,Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
