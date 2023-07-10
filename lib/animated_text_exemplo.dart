import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedTextExemplo(),
    ),
  );
}

class AnimatedTextExemplo extends StatefulWidget {
  final String title = 'AnimatedTextExemplo';

  const AnimatedTextExemplo({Key? key}) : super(key: key);

  @override
  AnimatedTextExemploState createState() => AnimatedTextExemploState();
}

class AnimatedTextExemploState extends State<AnimatedTextExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: TextLiquidFill(
          text: 'DBM Spalla',
          boxBackgroundColor: Colors.white,
          waveDuration: Duration(seconds: 20),
          waveColor: Colors.blue,
          textStyle: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
