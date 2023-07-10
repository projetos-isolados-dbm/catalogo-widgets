import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldMessegerExemplo(),
    ),
  );
}

class ScaffoldMessegerExemplo extends StatefulWidget {
  final String title = 'ScaffoldMessegerExemplo';

  const ScaffoldMessegerExemplo({Key? key}) : super(key: key);

  @override
  ScaffoldMessegerExemploState createState() => ScaffoldMessegerExemploState();
}

class ScaffoldMessegerExemploState extends State<ScaffoldMessegerExemplo> {
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
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    elevation: 10,
                    padding: EdgeInsets.all(10),
                    content: Center(child: Text('Teste ScaffoldMessager')),
                  ),
                );
              },
              child: const Text('Mostrar SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
