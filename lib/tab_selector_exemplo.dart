import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabSelectorExemplo(),
    ),
  );
}

class TabSelectorExemplo extends StatefulWidget {
  final String title = 'TabSelectorExemplo';

  const TabSelectorExemplo({Key? key}) : super(key: key);

  @override
  TabSelectorExemploState createState() => TabSelectorExemploState();
}

class TabSelectorExemploState extends State<TabSelectorExemplo>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  int numeroDePontos = 3;
  @override
  void initState() {
    tabController = TabController(length: numeroDePontos, vsync: this);
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      (tabController.index == numeroDePontos - 1)
          ? tabController.index = 0
          : tabController.index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            child: TabBarView(
              controller: tabController,
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
          Positioned(
            left: 170,
            bottom: 10,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              color: Colors.transparent,
              child: TabPageSelector(
                selectedColor: Colors.black,
                controller: tabController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
