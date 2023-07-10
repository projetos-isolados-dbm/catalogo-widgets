import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InteractiveViewerExemplo(),
    ),
  );
}

class InteractiveViewerExemplo extends StatefulWidget {
  final String title = 'InteractiveViewerExemplo';

  const InteractiveViewerExemplo({Key? key}) : super(key: key);

  @override
  InteractiveViewerExemploState createState() =>
      InteractiveViewerExemploState();
}

class InteractiveViewerExemploState extends State<InteractiveViewerExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Permite o usuário aplicar zoom na imagem
          Container(
            color: Colors.white,
            child: InteractiveViewer(
              child: Image.asset('assets/images/dbm_favicon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
