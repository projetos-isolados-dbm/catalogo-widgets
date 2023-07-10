import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpansionPanelExemplo(),
    ),
  );
}

class ExpansionPanelExemplo extends StatefulWidget {
  final String title = 'ExpansionPanelExemplo';

  const ExpansionPanelExemplo({Key? key}) : super(key: key);

  @override
  ExpansionPanelExemploState createState() => ExpansionPanelExemploState();
}

class ExpansionPanelExemploState extends State<ExpansionPanelExemplo> {
  List<bool> expansionPanelAberto = List.generate(10, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          children: [
            for (bool panel in expansionPanelAberto)
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return const Center(child: Text('Click para Abrir'));
                },
                body: const Text('Expansion está aberto'),
                isExpanded: panel,
              ),
          ],
          expansionCallback: (index, estaAberto) => setState(
            () {
              expansionPanelAberto[index] = !estaAberto;
            },
          ),
        ),
      ),
    );
  }
}
