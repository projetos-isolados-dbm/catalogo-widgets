import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BadgesExemplo(),
    ),
  );
}

class BadgesExemplo extends StatefulWidget {
  final String title = 'BadgesExemplo';

  const BadgesExemplo({Key? key}) : super(key: key);

  @override
  BadgesExemploState createState() => BadgesExemploState();
}

class BadgesExemploState extends State<BadgesExemplo> {
  int countBadge = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          //Faz a incrementação no badge do icone
          onPressed: () {
            setState(() {
              countBadge++;
            });
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          //Faz a decrementação no badge do icone
          onPressed: () {
            setState(() {
              countBadge--;
            });
          },
          child: const Icon(Icons.remove),
        ),
      ]),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red),
              badgeContent: Text(
                "$countBadge",
                style: const TextStyle(color: Colors.white),
              ),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              child: const Icon(
                Icons.phone_missed,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
