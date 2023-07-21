import 'package:flutter/material.dart';

class Thecaptionone extends StatefulWidget {
  final them;
  final int selectedcolortext;
  Thecaptionone(this.them, this.selectedcolortext);

  @override
  State<Thecaptionone> createState() => _ThecaptiononeState();
}

class _ThecaptiononeState extends State<Thecaptionone> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Hot picks",
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
        ),
      ],
    );
  }
}
