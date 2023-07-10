import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroExemplo(),
    ),
  );
}

class HeroExemplo extends StatefulWidget {
  final String title = 'HeroExemplo';

  const HeroExemplo({Key? key}) : super(key: key);

  @override
  HeroExemploState createState() => HeroExemploState();
}

class HeroExemploState extends State<HeroExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PageHero(),
              ),
            );
          },
          child: Hero(
            transitionOnUserGestures: true,
            tag: 'logo-spalla',
            child: Image.asset('assets/images/dbm_favicon.png')
                .animate()
                .shakeX(amount: 4, duration: 220.ms, delay: 0.ms),
          ),
        ),
      ),
    );
  }
}

class PageHero extends StatefulWidget {
  const PageHero({super.key});

  @override
  State<PageHero> createState() => _PageHeroState();
}

class _PageHeroState extends State<PageHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Hero(
              tag: 'logo-spalla',
              child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/dbm_favicon.png',
                ),
              )),
        ],
        title: const Text('Page Hero'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
