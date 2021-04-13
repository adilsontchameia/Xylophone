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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(1);
                },
                color: Colors.red,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(2);
                },
                color: Colors.yellow,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(3);
                },
                color: Colors.purple,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(4);
                },
                color: Colors.green,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(5);
                },
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(6);
                },
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  reproduzir(7);
                },
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
