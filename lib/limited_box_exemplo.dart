import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LimitedBoxExemplo(),
    ),
  );
}

class LimitedBoxExemplo extends StatefulWidget {
  final String title = 'LimitedBoxExemplo';

  const LimitedBoxExemplo({Key? key}) : super(key: key);

  @override
  LimitedBoxExemploState createState() => LimitedBoxExemploState();
}

class LimitedBoxExemploState extends State<LimitedBoxExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          for (int container = 0; container < 10; container++)
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: LimitedBox(
                maxHeight: 200,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            )
        ],
      ),
    );
  }
}
