import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  Wakelock.enable(); // Método responsavel por manter a tela ativa
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WakelockExemplo(),
    ),
  );
}

class WakelockExemplo extends StatefulWidget {
  final String title = 'WakelockExemplo';

  const WakelockExemplo({Key? key}) : super(key: key);

  @override
  WakelockExemploState createState() => WakelockExemploState();
}

class WakelockExemploState extends State<WakelockExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Teste WakeLock - manter tela ativa',
            ),
          ],
        ),
      ),
    );
  }
}
