import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedCrossFadeExemplo(),
    ),
  );
}

class AnimatedCrossFadeExemplo extends StatefulWidget {
  final String title = 'AnimatedCrossFadeExemplo';

  const AnimatedCrossFadeExemplo({Key? key}) : super(key: key);

  @override
  AnimatedCrossFadeExemploState createState() =>
      AnimatedCrossFadeExemploState();
}

class AnimatedCrossFadeExemploState extends State<AnimatedCrossFadeExemplo> {
  bool _first = false;
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      // Temporizador para mudar o Widget a cada 2 segundos
      setState(() {
        _first =
            !_first; // variavel condicional para mudar entre o primeiro widget e o segundo no animated_cross_fade.
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 1000),
              firstChild: ClipOval(
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                  child: const Center(
                    child: Text(
                      'Teste',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              secondChild: ClipOval(
                child: Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                  child: const Center(
                    child: Text(
                      'AnimatedCrossFade',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              crossFadeState:
                  _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ],
        ),
      ),
    );
  }
}
