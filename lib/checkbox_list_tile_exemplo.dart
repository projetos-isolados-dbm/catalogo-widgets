import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckBoxListTileExemplo(),
    ),
  );
}

class CheckBoxListTileExemplo extends StatefulWidget {
  final String title = 'CheckBoxListTileExemplo';

  const CheckBoxListTileExemplo({Key? key}) : super(key: key);

  @override
  CheckBoxListTileExemploState createState() => CheckBoxListTileExemploState();
}

class CheckBoxListTileExemploState extends State<CheckBoxListTileExemplo> {
  // Gera uma Lista boleana com 8 itens com o valor false
  List<bool> checkBoxValue = List.generate(8, (index) => false);
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
              CheckboxListTile(
                onChanged: (value) {
                  //Altera o valor do CheckBox do Tile, de acordo com o index do item
                  setState(() {
                    checkBoxValue[index] = value!;
                  });
                },
                value: checkBoxValue[index],
                title: Text('CheckBoxTiles $index'),
              ),
              const Divider(),
            ],
          );
        },
        itemCount: checkBoxValue.length,
      ),
    );
  }
}
