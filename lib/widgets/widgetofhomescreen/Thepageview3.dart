import 'package:final_project/data/alldata.dart';
import 'package:flutter/material.dart';

class Thepageview3 extends StatefulWidget {
  final them;
  final pageController;
  late final pageno;
  final int selectedcolortext;
  final int selectedcolorback;
  Thepageview3(this.pageController, this.them, this.pageno,
      this.selectedcolortext, this.selectedcolorback);

  @override
  State<Thepageview3> createState() => _Thepageview3State();
}

class _Thepageview3State extends State<Thepageview3> {
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
              widget.pageno = value;
            },
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 20),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
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
