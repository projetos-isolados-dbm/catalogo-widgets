import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropDownBunttonExemplo(),
    ),
  );
}

class DropDownBunttonExemplo extends StatefulWidget {
  final String title = 'DropDownBunttonExemplo';

  const DropDownBunttonExemplo({Key? key}) : super(key: key);

  @override
  DropDownBunttonExemploState createState() => DropDownBunttonExemploState();
}

class DropDownBunttonExemploState extends State<DropDownBunttonExemplo> {
  late String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 150,
              child: DropdownButton(
                elevation: 5,
                isExpanded: true,
                value: selectedValue,
                items: const [
                  DropdownMenuItem(
                    value: 'cachorro',
                    child: Text('cachorro'),
                  ),
                  DropdownMenuItem(
                    value: 'gato',
                    child: Text('gato'),
                  ),
                  DropdownMenuItem(
                    value: 'elefante',
                    child: Text('elefante'),
                  ),
                  DropdownMenuItem(
                    value: 'girafa',
                    child: Text('girafa'),
                  ),
                  DropdownMenuItem(
                    value: 'macaco',
                    child: Text('macaco'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
