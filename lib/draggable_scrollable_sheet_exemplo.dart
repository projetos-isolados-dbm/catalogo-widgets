import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DraggableScrollableSheetExemplo(),
    ),
  );
}

class DraggableScrollableSheetExemplo extends StatefulWidget {
  final String title = 'DraggableScrollableSheetExemplo';

  const DraggableScrollableSheetExemplo({Key? key}) : super(key: key);

  @override
  DraggableScrollableSheetExemploState createState() =>
      DraggableScrollableSheetExemploState();
}

class DraggableScrollableSheetExemploState
    extends State<DraggableScrollableSheetExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          minChildSize: 0.1,
          maxChildSize: 0.9,
          initialChildSize: 0.1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[100],
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
