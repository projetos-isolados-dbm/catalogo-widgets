import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LinearGradientExemplo(),
    ),
  );
}

class LinearGradientExemplo extends StatefulWidget {
  final String title = 'Linear Gradient Exemplo';

  const LinearGradientExemplo({Key? key}) : super(key: key);

  @override
  LinearGradientExemploState createState() => LinearGradientExemploState();
}

class LinearGradientExemploState extends State<LinearGradientExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.blue,
              Colors.purple,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
      ),
    );
  }
}
