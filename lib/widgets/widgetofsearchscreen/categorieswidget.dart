import 'package:flutter/material.dart';

class Thecategorytext extends StatelessWidget {
  final Function selectedcolortext;
  Thecategorytext(this.selectedcolortext);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(-0.85, 0),
      child: Text(
        "Categories",
        style: TextStyle(
            color: Color(selectedcolortext()),
            fontFamily: "inter",
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
