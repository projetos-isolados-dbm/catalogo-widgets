import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RaitingBarExemplo(),
    ),
  );
}

class RaitingBarExemplo extends StatefulWidget {
  final String title = 'RaitingBarExemplo';

  const RaitingBarExemplo({Key? key}) : super(key: key);

  @override
  RaitingBarExemploState createState() => RaitingBarExemploState();
}

class RaitingBarExemploState extends State<RaitingBarExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RatingBar(
              glow: false,
              ratingWidget: RatingWidget(
                  empty: const Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  full: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )),
              onRatingUpdate: (value) {},
            ),
            RatingBar(
              direction: Axis.vertical,
              glow: false,
              ratingWidget: RatingWidget(
                  empty: const Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  full: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )),
              onRatingUpdate: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
