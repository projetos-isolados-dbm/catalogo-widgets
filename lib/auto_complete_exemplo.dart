import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AutoCompleteExemplo(),
    ),
  );
}

class AutoCompleteExemplo extends StatefulWidget {
  final String title = 'AutoCompleteExemplo';

  const AutoCompleteExemplo({Key? key}) : super(key: key);

  @override
  AutoCompleteExemploState createState() => AutoCompleteExemploState();
}

class AutoCompleteExemploState extends State<AutoCompleteExemplo> {
  static const List<String> listPesquisaRecente = <String>[
    'andrey',
    'ahahaha',
    'pereira',
    'cachorro',
    'bola',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Autocomplete<String>(
                // Retorna a lista listPesquisaRecent de acordo com o valor que o usuário digitou
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return listPesquisaRecente.where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String itemSelecionado) {
                  debugPrint(itemSelecionado);
                },
              ),
            ],
          ),
        ));
  }
}
