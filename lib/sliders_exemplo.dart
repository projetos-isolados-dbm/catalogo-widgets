import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlidersExemplo(),
    ),
  );
}

class SlidersExemplo extends StatefulWidget {
  final String title = 'SlidersExemplo';

  const SlidersExemplo({Key? key}) : super(key: key);

  @override
  SlidersExemploState createState() => SlidersExemploState();
}

class SlidersExemploState extends State<SlidersExemplo> {
  double currentValueSlider = 0;
  double currentValueCupertinoSlider = 0;
  var selectedRange = RangeValues(0.2, 0.8);
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
            Slider(
              value: currentValueSlider,
              onChanged: (value) {
                setState(
                  () {
                    currentValueSlider = value;
                  },
                );
              },
              min: 0.0,
              max: 100,
              label: '$currentValueSlider',
            ),
            RangeSlider(
                values: selectedRange,
                onChanged: (value) {
                  setState(
                    () {
                      selectedRange = value;
                    },
                  );
                },
                min: 0.0,
                max: 2.0,
                divisions: 10,
                labels: RangeLabels(
                    '${selectedRange.start}', '${selectedRange.end}')),
            CupertinoSlider(
              value: currentValueCupertinoSlider,
              onChanged: (value) {
                setState(
                  () {
                    currentValueCupertinoSlider = value;
                  },
                );
              },
              min: 0.0,
              max: 100,
            ),
          ],
        ),
      ),
    );
  }
}
