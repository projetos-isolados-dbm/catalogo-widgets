import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedOpacityExemplo(),
    ),
  );
}

class AnimatedOpacityExemplo extends StatefulWidget {
  final String title = 'AnimatedOpacityExemplo';

  const AnimatedOpacityExemplo({Key? key}) : super(key: key);

  @override
  AnimatedOpacityExemploState createState() => AnimatedOpacityExemploState();
}

class AnimatedOpacityExemploState extends State<AnimatedOpacityExemplo> {
  double opacidadeAtual = 0;

  @override
  void initState() {
    // Alterna a Opacidade entre 0 e 1, a cada 2 segundos
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setState(() {
          if (opacidadeAtual == 0) {
            opacidadeAtual = 1;
          } else {
            opacidadeAtual = 0;
          }
        });
      },
    );
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
            AnimatedOpacity(
              opacity: opacidadeAtual,
              duration: const Duration(milliseconds: 700),
              child: const Text(
                'Teste AnimatedOpacity',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
