import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RichTextExemplo(),
    ),
  );
}

class RichTextExemplo extends StatefulWidget {
  final String title = 'RichTextExemplo';

  const RichTextExemplo({Key? key}) : super(key: key);

  @override
  RichTextExemploState createState() => RichTextExemploState();
}

class RichTextExemploState extends State<RichTextExemplo> {
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
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Teste ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'do ',
                    style: TextStyle(
                        inherit: true,
                        color: Color.fromARGB(255, 250, 0, 0),
                        fontSize: 20),
                  ),
                  TextSpan(
                    text: 'RichText',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
