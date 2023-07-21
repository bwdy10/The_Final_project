import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Thelistgenerate extends StatefulWidget {
  late int pageno;
  Thelistgenerate(this.pageno, {super.key});
  @override
  State<Thelistgenerate> createState() => _ThelistgenerateState();
}

class _ThelistgenerateState extends State<Thelistgenerate> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: widget.pageno == index ? Colors.red : Colors.white54,
                  borderRadius: BorderRadius.circular(30)),
              height: 6,
              width: widget.pageno == index ? 30 : 10,
            ),
          ),
        ),
      ],
    );
  }
}
