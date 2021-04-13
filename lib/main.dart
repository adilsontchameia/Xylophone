import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  void reproduzir(int numero) {
    final player = AudioCache();
    player.play("note$numero.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlatButton(
              onPressed: () {
                reproduzir(1);
              },
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                reproduzir(2);
              },
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: () {
                reproduzir(3);
              },
              color: Colors.purple,
            ),
            FlatButton(
              onPressed: () {
                reproduzir(4);
              },
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                reproduzir(5);
              },
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                reproduzir(6);
              },
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                reproduzir(7);
              },
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
