import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReorderableListViewExemplo(),
    ),
  );
}

class ReorderableListViewExemplo extends StatefulWidget {
  final String title = 'ReorderableListViewExemplo';

  const ReorderableListViewExemplo({Key? key}) : super(key: key);

  @override
  ReorderableListViewExemploState createState() =>
      ReorderableListViewExemploState();
}

class ReorderableListViewExemploState
    extends State<ReorderableListViewExemplo> {
  final List<int> itensList = List<int>.generate(20, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ReorderableListView(
        children: [
          for (int item in itensList)
            Padding(
              key: ValueKey('$item'),
              padding: const EdgeInsets.only(bottom: 5),
              child: PhysicalModel(
                elevation: 1,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: ListTile(
                  title: Text('Liste Tile $item'),
                ),
              ),
            )
        ],
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -=
                  1; // A subtração de 1 do newIndex é necessária nesse caso específico para corrigir a posição quando um item é arrastado para baixo na lista.
            }
            final int item = itensList
                .removeAt(oldIndex); // retorna o valor do index removido
            itensList.insert(newIndex, item); // adiciona o item à nova posição
          });
        },
      ),
    );
  }
}
