import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationRailExemplo(),
    ),
  );
}

class NavigationRailExemplo extends StatefulWidget {
  final String title = 'NavigationRailExemplo';

  const NavigationRailExemplo({Key? key}) : super(key: key);

  @override
  NavigationRailExemploState createState() => NavigationRailExemploState();
}

class NavigationRailExemploState extends State<NavigationRailExemplo> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Row(
        children: [
          NavigationRail(
            elevation: 5,
            groupAlignment: 0,
            destinations: const [
              NavigationRailDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: Text('Pagina 1'),
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.settings_applications),
                icon: Icon(Icons.settings_applications_outlined),
                label: Text('Pagina 2'),
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.chat_rounded),
                icon: Icon(Icons.chat_outlined),
                label: Text('Pagina 3'),
              ),
            ],
            selectedIndex: currentPageIndex,
            onDestinationSelected: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          ),
          <Widget>[
            Expanded(
              child: Container(
                color: Colors.pink,
                alignment: Alignment.center,
                child: const Text('Pagina 1'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Text('Pagina 2'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text('Pagina 3'),
              ),
            ),
          ][currentPageIndex]
        ],
      ),
    );
  }
}
