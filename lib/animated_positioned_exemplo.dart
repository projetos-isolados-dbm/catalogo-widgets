import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enable();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedPositionedExemplo(),
    ),
  );
}

class AnimatedPositionedExemplo extends StatefulWidget {
  final String title = 'AnimatedPositionedExemplo';

  const AnimatedPositionedExemplo({Key? key}) : super(key: key);

  @override
  AnimatedPositionedExemploState createState() =>
      AnimatedPositionedExemploState();
}

class AnimatedPositionedExemploState extends State<AnimatedPositionedExemplo> {
  bool showMessage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: (showMessage)
            ? const Icon(Icons.arrow_drop_down)
            : const Icon(Icons.arrow_drop_up),
        onPressed: () {
          setState(
            () {
              showMessage = !showMessage;
            },
          );
        },
      ),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          const Positioned(
            child: Center(child: Text('Teste Animated Positioned')),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: showMessage ? 320 : 350,
            left: 100,
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(20),
              elevation: 20,
              color: Colors.blue,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                height: 40,
                width: 200,
                child: const Center(
                    child: Text(
                  'Click no botão!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
