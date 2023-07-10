import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShaderMaskexemplo(),
    ),
  );
}

class ShaderMaskexemplo extends StatefulWidget {
  final String title = 'ShaderMaskexemplo';

  const ShaderMaskexemplo({Key? key}) : super(key: key);

  @override
  ShaderMaskexemploState createState() => ShaderMaskexemploState();
}

class ShaderMaskexemploState extends State<ShaderMaskexemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ShaderMask(
            child: const Text(
              'ShaderMask Exemplo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            shaderCallback: (bounds) => const RadialGradient(
                    colors: [
                  Color.fromARGB(255, 0, 60, 255),
                  Color.fromARGB(255, 10, 172, 247),
                  Color.fromARGB(255, 140, 219, 255),
                  Color.fromARGB(255, 0, 60, 255),
                ],
                    center: Alignment.topRight,
                    radius: 1.0,
                    tileMode: TileMode.mirror)
                .createShader(bounds),
          ),
        ),
      ),
    );
  }
}
