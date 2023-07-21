import 'package:final_project/screens/hotpicksscreen.dart';
import 'package:flutter/material.dart';

import '../../data/alldata.dart';

class Thepageview2 extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final them;
  // ignore: prefer_typing_uninitialized_variables
  final pageController;
  final int selectedcolortext;
  final int selectedcolorback;
  final Function(int value) getvalue;

  const Thepageview2(this.them, this.pageController, this.getvalue,
      this.selectedcolortext, this.selectedcolorback,
      {super.key});

  @override
  State<Thepageview2> createState() => _Thepageview2State();
}

class _Thepageview2State extends State<Thepageview2> {
  int pageno = 0;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(right: 80),
        child: Container(
          color: Color(widget.selectedcolorback),
          width: 550,
          height: 180,
          child: PageView.builder(
            itemCount: data.length,
            controller: widget.pageController,
            onPageChanged: (value) {
              setState(() {
                pageno = value;
                widget.getvalue(pageno);
              });
            },
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            Hotpicksscreen.hotpicksroute,
                            arguments: {
                              "id": data[index].id,
                              "them": widget.them
                            });
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(
                          data[index].image,
                          fit: BoxFit.fill,
                          width: 500,
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  data[index].captions,
                  style: TextStyle(color: Color(widget.selectedcolortext)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
