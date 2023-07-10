import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedPaddingExemplo(),
    ),
  );
}

class AnimatedPaddingExemplo extends StatefulWidget {
  final String title = 'AnimatedPaddingExemplo';

  const AnimatedPaddingExemplo({Key? key}) : super(key: key);

  @override
  AnimatedPaddingExemploState createState() => AnimatedPaddingExemploState();
}

class AnimatedPaddingExemploState extends State<AnimatedPaddingExemplo> {
  double padvalue = 0;
  @override
  void initState() {
    // Alterna o padding entre 0 e 5 a cada 2 segundos
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setState(
          () {
            if (padvalue == 0) {
              padvalue = 5;
            } else {
              padvalue = 0;
            }
          },
        );
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(padvalue),
                  duration: const Duration(
                    milliseconds: 1000,
                  ),
                  child: PhysicalModel(
                    elevation: 20,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.red,
                    color: Colors.red,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(padvalue),
                  duration: const Duration(
                    milliseconds: 1000,
                  ),
                  child: PhysicalModel(
                    elevation: 20,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.green,
                    color: Colors.green,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(padvalue),
                  duration: const Duration(
                    milliseconds: 1000,
                  ),
                  child: PhysicalModel(
                    elevation: 20,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.blue,
                    color: Colors.blue,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(padvalue),
                  duration: const Duration(
                    milliseconds: 1000,
                  ),
                  child: PhysicalModel(
                    elevation: 20,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.yellow,
                    color: Colors.yellow,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
