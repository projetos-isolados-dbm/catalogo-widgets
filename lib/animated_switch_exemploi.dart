import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSwitchExemplo(),
    ),
  );
}

class AnimatedSwitchExemplo extends StatefulWidget {
  final String title = 'AnimatedSwitchExemplo';

  const AnimatedSwitchExemplo({Key? key}) : super(key: key);

  @override
  AnimatedSwitchExemploState createState() => AnimatedSwitchExemploState();
}

class AnimatedSwitchExemploState extends State<AnimatedSwitchExemplo> {
  List<Widget> listAnimationWidgets = [
    ClipOval(
      child: Container(
        color: Colors.blue,
        height: 200,
        width: 400,
      ),
    ),
    Container(
      color: const Color.fromARGB(255, 243, 33, 198),
      height: 400,
      width: 200,
    ),
    Container(
      color: Colors.green,
      height: 200,
      width: 200,
    ),
    ClipOval(
      child: Container(
        color: Colors.red,
        height: 200,
        width: 200,
      ),
    ),
  ];

  int indexWidgets = 0;
  Widget animationWidget = Container();
  @override
  void initState() {
    //Temporizador alterna entre os widgets da tela, se o index chegar em 3, ele volta ao primeiro widget
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setState(() {
          if (indexWidgets == 3) {
            indexWidgets = 0;
          } else {
            indexWidgets++;
          }
          animationWidget = listAnimationWidgets[
              indexWidgets]; //Recebe o widget de acordo com o index recebido;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: animationWidget,
                transitionBuilder: (child, Animation<double> animation) =>
                    ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
