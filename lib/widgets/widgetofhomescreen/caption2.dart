import 'package:flutter/material.dart';

class Thrcaption2 extends StatefulWidget {
  final them;
  final int selectedcolortext;
  const Thrcaption2(this.them, this.selectedcolortext);
  @override
  State<Thrcaption2> createState() => _Thrcaption2State();
}

class _Thrcaption2State extends State<Thrcaption2> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 8),
          child: Text(
            "Recommended",
            style: TextStyle(
                fontFamily: "inter",
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(widget.selectedcolortext)),
          ),
        ),
      ),
      const Expanded(
        flex: 1,
        child: Text("seeAll",
            style: TextStyle(
                fontFamily: "inter",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.red)),
      )
    ]);
  }
}
