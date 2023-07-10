import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarExemplo(),
    ),
  );
}

class NavigationBarExemplo extends StatefulWidget {
  const NavigationBarExemplo({super.key});

  @override
  State<NavigationBarExemplo> createState() => _NavigationBarExemploState();
}

class _NavigationBarExemploState extends State<NavigationBarExemplo> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'NavigationBarExemplo',
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Pagina 1',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings_applications),
            icon: Icon(Icons.settings_applications_outlined),
            label: 'Pagina 2',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.chat_rounded),
            icon: Icon(Icons.chat_outlined),
            label: 'Pagina 3',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: const Text('Pagina 1'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text('pagina 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Pagina 3'),
        ),
      ][currentPageIndex],
    );
  }
}
