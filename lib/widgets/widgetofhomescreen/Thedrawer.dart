import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Thedrawer extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  final Function(bool value) getthem;
  final int selectedcolortext;
  final int selectedcolorback;

  const Thedrawer(this.getthem, this.selectedcolortext, this.selectedcolorback,
      {super.key});

  @override
  State<Thedrawer> createState() => _ThedrawerState();
}

class _ThedrawerState extends State<Thedrawer> {
  bool them = false;
  savethem(bool initthem) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setBool("them", initthem);
    });
  }

  finalsavethem() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      them = preferences.getBool("them")!;
    });
  }

  @override
  void initState() {
    finalsavethem();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(widget.selectedcolorback),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "settings :",
                  style: TextStyle(
                      color: Color(widget.selectedcolortext),
                      fontFamily: "inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 250,
                width: 250,
                color: Color(widget.selectedcolorback),
                child: Row(
                  children: [
                    Text(
                      "Dark mode",
                      style: TextStyle(color: Color(widget.selectedcolortext)),
                    ),
                    Switch(
                      value: them,
                      onChanged: (value) => setState(() {
                        them = value;
                        savethem(value);
                        widget.getthem(value);
                      }),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
