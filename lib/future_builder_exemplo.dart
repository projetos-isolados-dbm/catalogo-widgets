import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilderExemplo(),
    ),
  );
}

class JsonModel {
  final String? name;

  const JsonModel({required this.name});

  factory JsonModel.fromJson(Map<String, dynamic> json) {
    return JsonModel(name: json['name']);
  }
}

class FutureBuilderExemplo extends StatefulWidget {
  final String title = 'FutureBuilderExemplo';

  const FutureBuilderExemplo({Key? key}) : super(key: key);

  @override
  FutureBuilderExemploState createState() => FutureBuilderExemploState();
}

class FutureBuilderExemploState extends State<FutureBuilderExemplo> {
  Future<dynamic>? data;

  @override
  initState() {
    super.initState();
    data = http.get(
        Uri.parse('https://my-json-server.typicode.com/typicode/demo/profile'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: FutureBuilder<dynamic>(
          future: data,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            List<Widget> children;
            if (snapshot.hasData && snapshot.hasError == false) {
              String name =
                  JsonModel.fromJson(jsonDecode(snapshot.data.body)).name ?? '';
              children = <Widget>[
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Requisição Concluida! $name',
                  ),
                ),
              ];
            } else if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.cancel,
                  color: Colors.red,
                  size: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Erro: ${snapshot.error}'),
                ),
              ];
            } else {
              children = const <Widget>[
                SizedBox(
                  width: 45,
                  height: 45,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Aguardando Json...'),
                ),
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            );
          },
        ));
  }
}
