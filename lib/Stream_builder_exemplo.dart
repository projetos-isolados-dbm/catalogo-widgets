import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilderExemplo(),
    ),
  );
}

class StreamBuilderExemplo extends StatefulWidget {
  final String title = 'StreamBuilderExemplo';

  const StreamBuilderExemplo({Key? key}) : super(key: key);

  @override
  StreamBuilderExemploState createState() => StreamBuilderExemploState();
}

class StreamBuilderExemploState extends State<StreamBuilderExemplo> {
  late StreamController<int> _streamController;
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = 0;
    _streamController = StreamController<int>();
    _startCounter();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  void _startCounter() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _counter++;
      _streamController.sink.add(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder Exemplo'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _streamController.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                'Count: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
