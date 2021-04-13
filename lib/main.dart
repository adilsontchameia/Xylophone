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

  Expanded botoes({Color color, int numero}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          reproduzir(numero);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            botoes(color: Colors.red, numero: 1),
            botoes(color: Colors.orange, numero: 2),
            botoes(color: Colors.green, numero: 3),
            botoes(color: Colors.purple, numero: 4),
            botoes(color: Colors.orange, numero: 5),
            botoes(color: Colors.cyan, numero: 6),
            botoes(color: Colors.pink, numero: 7),
          ],
        ),
      ),
    );
  }
}
