import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListWheelScrollViewExemplo(),
    ),
  );
}

class ListWheelScrollViewExemplo extends StatefulWidget {
  final String title = 'ListWheelScrollViewExemplo';

  const ListWheelScrollViewExemplo({Key? key}) : super(key: key);

  @override
  ListWheelScrollViewExemploState createState() =>
      ListWheelScrollViewExemploState();
}

class ListWheelScrollViewExemploState
    extends State<ListWheelScrollViewExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 50,
          diameterRatio: 1,
          children: [
            for (int i = 0; i < 50; i++)
              Container(
                width: 100,
                color: Colors.green,
              ),
          ],
        ),
      ),
    );
  }
}
