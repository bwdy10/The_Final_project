import 'package:flutter/material.dart';

class Thegridview extends StatefulWidget {
  final List finallist;
  final Function selectedcolorback;
  final Function selectedcolortext;
  Thegridview(this.finallist, this.selectedcolorback, this.selectedcolortext);
  @override
  State<Thegridview> createState() => _ThegridviewState();
}

class _ThegridviewState extends State<Thegridview> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        color: Color(widget.selectedcolorback()),
        height: 500,
        child: GridView.builder(
          itemCount: widget.finallist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Container(
              height: 400,
              color: Color(widget.selectedcolorback()),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(widget.selectedcolorback()),
                        borderRadius: BorderRadius.circular(15)),
                    width: 175,
                    height: 200,
                    child: Image.asset(
                      widget.finallist[index].image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 3, left: 3, top: 8),
                    child: Text(
                      widget.finallist[index].captions,
                      style:
                          TextStyle(color: Color(widget.selectedcolortext())),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
