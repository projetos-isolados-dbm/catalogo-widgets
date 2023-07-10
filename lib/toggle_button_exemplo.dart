import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToggleButtonExemplo(),
    ),
  );
}

class ToggleButtonExemplo extends StatefulWidget {
  final String title = 'ToggleButtonExemplo';

  const ToggleButtonExemplo({Key? key}) : super(key: key);

  @override
  ToggleButtonExemploState createState() => ToggleButtonExemploState();
}

class ToggleButtonExemploState extends State<ToggleButtonExemplo> {
  List<bool> isSelected = List.generate(3, (index) => false);
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
            ToggleButtons(
              children: [
                for (int i = 0; i < isSelected.length; i++) Icon(Icons.add)
              ],
              onPressed: (index) {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
