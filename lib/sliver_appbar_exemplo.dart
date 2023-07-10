import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverAppBarExemplo(),
    ),
  );
}

class SliverAppBarExemplo extends StatefulWidget {
  final String title = 'SliverAppBarExemplo';

  const SliverAppBarExemplo({Key? key}) : super(key: key);

  @override
  SliverAppBarExemploState createState() => SliverAppBarExemploState();
}

class SliverAppBarExemploState extends State<SliverAppBarExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            stretch: true,
            expandedHeight: 300.00,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              title: const Text('Test SliverAppBar'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'https://www.portaldosanimais.com.br/wp-content/uploads/2019/06/Camelo-e1561382190637.jpg',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(height: 50, color: Colors.red),
                Container(height: 50, color: Colors.purple),
                Container(height: 50, color: Colors.green),
                Container(height: 50, color: Colors.orange),
                Container(height: 50, color: Colors.yellow),
                Container(height: 50, color: Colors.deepPurple),
                Container(height: 50, color: Colors.teal),
                Container(height: 50, color: Colors.lightGreen),
                Container(height: 50, color: Colors.yellowAccent),
                Container(height: 50, color: Colors.pink),
                Container(height: 50, color: Colors.tealAccent),
                Container(height: 50, color: Colors.amber),
                Container(height: 50, color: Colors.cyan),
                Container(height: 50, color: Colors.lime),
                Container(height: 50, color: Colors.deepOrange),
              ],
            ),
          )
        ],
      ),
    );
  }
}
