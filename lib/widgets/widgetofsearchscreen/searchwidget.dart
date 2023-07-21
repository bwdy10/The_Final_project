import 'package:flutter/material.dart';

class Thesearchtext extends StatefulWidget {
  final Function selectedcolortext;
  Thesearchtext(this.selectedcolortext);

  @override
  State<Thesearchtext> createState() => _ThesearchtextState();
}

class _ThesearchtextState extends State<Thesearchtext> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.85, 0),
      child: Text(
        "search",
        style: TextStyle(
            color: Color(widget.selectedcolortext()),
            fontFamily: "inter",
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
