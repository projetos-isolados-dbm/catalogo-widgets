import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaselineExemplo(),
    ),
  );
}

class BaselineExemplo extends StatefulWidget {
  final String title = 'BaselineExemplo';

  const BaselineExemplo({Key? key}) : super(key: key);

  @override
  BaselineExemploState createState() => BaselineExemploState();
}

class BaselineExemploState extends State<BaselineExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              color: Colors.red,
              child: const Center(
                child: Baseline(
                  baseline:
                      400, // Define a posição do texto  dentro do widget, so for maior ou menor que o height, o filho é posicionado fora do widget pai
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'aaaa',
                    style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
