import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RawMagnifierExample(),
    ),
  );
}

class RawMagnifierExample extends StatefulWidget {
  final String title = 'RawMagnifierExample';

  const RawMagnifierExample({Key? key}) : super(key: key);

  @override
  RawMagnifierExampleState createState() => RawMagnifierExampleState();
}

class RawMagnifierExampleState extends State<RawMagnifierExample> {
  // variavel armazena a posição x,y da entrada do usuário
  Offset dragGesturePosition = Offset.zero;

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
          children: [
            Stack(
              children: [
                GestureDetector(
                  onPanUpdate: (DragUpdateDetails details) => setState(
                    () {
                      dragGesturePosition = details
                          .localPosition; //Recebe a localização da entrada do usuário
                    },
                  ),
                  child: Container(
                    height: 200,
                    width: 400,
                    child: const Center(
                        child: Text('Teste da Lupa : RawMagnifierExample')),
                  ),
                ),
                Positioned(
                  //Utiliza a localização da entrada do usuário para posicionar o RawMagnifier
                  left: dragGesturePosition.dx,
                  top: dragGesturePosition.dy,
                  child: const RawMagnifier(
                    size: Size(50, 50),
                    decoration: MagnifierDecoration(
                        shape: CircleBorder(
                      side: BorderSide(color: Colors.blue, width: 3),
                    )),
                    magnificationScale: 2,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
