import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterAnimateExemplo(),
    ),
  );
}

class FlutterAnimateExemplo extends StatefulWidget {
  final String title = 'FlutterAnimateExemplo';

  const FlutterAnimateExemplo({Key? key}) : super(key: key);

  @override
  FlutterAnimateExemploState createState() => FlutterAnimateExemploState();
}

class FlutterAnimateExemploState extends State<FlutterAnimateExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: const Text(
            'Flutter animate Exemplo',
            style: TextStyle(color: Colors.black, fontSize: 30),
          )
              .animate()
              .scaleXY(begin: 0, end: 1, duration: 1000.ms)
              .shakeX(amount: 2, delay: 1000.ms, duration: 1.seconds),
        ),
      ),
    );
  }
}
