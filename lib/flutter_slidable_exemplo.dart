import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterSlidableExemplo(),
    ),
  );
}

class FlutterSlidableExemplo extends StatefulWidget {
  final String title = 'FlutterSlidableExemplo';

  const FlutterSlidableExemplo({Key? key}) : super(key: key);

  @override
  FlutterSlidableExemploState createState() => FlutterSlidableExemploState();
}

class FlutterSlidableExemploState extends State<FlutterSlidableExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Slidable(
            startActionPane: ActionPane(motion: ScrollMotion(), children: [
              SlidableAction(
                onPressed: null,
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed: null,
                backgroundColor: Color(0xFF21B7CA),
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
            ]),
            child: Column(
              children: [
                ListTile(
                  title: Text('Teste Slider'),
                  subtitle: Text('Arraste o item para o lado'),
                ),
                Divider()
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
