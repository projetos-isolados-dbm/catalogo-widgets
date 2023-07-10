import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RefreshIndicatorExemplo(),
    ),
  );
}

class RefreshIndicatorExemplo extends StatefulWidget {
  final String title = 'RefreshIndicatorExemplo';

  const RefreshIndicatorExemplo({Key? key}) : super(key: key);

  @override
  RefreshIndicatorExemploState createState() => RefreshIndicatorExemploState();
}

class RefreshIndicatorExemploState extends State<RefreshIndicatorExemplo> {
  int incrementListTile = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () {
          // Adiciona um item na lista a cada refresh
          return Future.delayed(
            const Duration(seconds: 1),
            () {
              setState(() {
                if (incrementListTile > 10) {
                  incrementListTile = 0;
                }
                incrementListTile++;
              });
            },
          );
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const Column(
              children: <Widget>[
                ListTile(
                  title: Text('Teste Refresh Indicator'),
                ),
                Divider(),
              ],
            );
          },
          itemCount: incrementListTile,
        ),
      ),
    );
  }
}
