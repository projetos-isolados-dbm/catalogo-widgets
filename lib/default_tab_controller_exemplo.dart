import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabViewExemplo(),
    ),
  );
}

class TabViewExemplo extends StatefulWidget {
  final String title = 'TabViewExemplo';

  const TabViewExemplo({Key? key}) : super(key: key);

  @override
  TabViewExemploState createState() => TabViewExemploState();
}

class TabViewExemploState extends State<TabViewExemplo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Page 1',
              ),
              Tab(
                text: 'Page 2',
              ),
              Tab(
                text: 'Page 3',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
              child: const Center(
                child: Text('Page 1'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Page 2'),
              ),
            ),
            Container(
              color: Colors.amber,
              child: const Center(
                child: Text('Page 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
