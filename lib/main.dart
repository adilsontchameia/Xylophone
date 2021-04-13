import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  void reproduzir() {
    final player = AudioCache();
    player.play("note1.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              child: Text(""),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              child: Text(""),
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              child: Text(""),
              color: Colors.purple,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              color: Colors.cyan,
            ),
            FlatButton(
              onPressed: () {
                reproduzir();
              },
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
