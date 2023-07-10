import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexedStackExemplo(),
    ),
  );
}

class IndexedStackExemplo extends StatefulWidget {
  final String title = 'IndexedStackExemplo';

  const IndexedStackExemplo({Key? key}) : super(key: key);

  @override
  IndexedStackExemploState createState() => IndexedStackExemploState();
}

class IndexedStackExemploState extends State<IndexedStackExemplo> {
  int indexWidgetStack = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: FloatingActionButton(
              child: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                setState(
                  () {
                    if (indexWidgetStack == 0) {
                      indexWidgetStack = 4;
                    }
                    indexWidgetStack--;
                  },
                );
              },
            ),
          ),
          FloatingActionButton(
            child: const Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              setState(
                () {
                  indexWidgetStack++;
                  if (indexWidgetStack == 4) {
                    indexWidgetStack = 0;
                  }
                },
              );
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: indexWidgetStack,
        children: [
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text('Page 1'),
            ),
          ),
          Container(
            color: Colors.purple,
            child: const Center(
              child: Text('Page 2'),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(
              child: Text('Page 3'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 4'),
            ),
          )
        ],
      ),
    );
  }
}
