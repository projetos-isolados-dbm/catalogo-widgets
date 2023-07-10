import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchListTileExemplo(),
    ),
  );
}

class SwitchListTileExemplo extends StatefulWidget {
  final String title = 'SwitchListTileExemplo';

  const SwitchListTileExemplo({Key? key}) : super(key: key);

  @override
  SwitchListTileExemploState createState() => SwitchListTileExemploState();
}

class SwitchListTileExemploState extends State<SwitchListTileExemplo> {
  List<bool> switchValue = List.generate(8, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              SwitchListTile(
                onChanged: (value) {
                  setState(() {
                    switchValue[index] = value;
                  });
                },
                value: switchValue[index],
                title: Text('SwitchTiles $index'),
              ),
              const Divider(),
            ],
          );
        },
        itemCount: switchValue.length,
      ),
    );
  }
}
