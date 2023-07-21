import 'package:flutter/material.dart';

class Thelistgenerate extends StatefulWidget {
  final Function getlist;
  final texts;
  final Function(int indexx) getindex;
  Thelistgenerate(this.getlist, this.texts, this.getindex);
  @override
  State<Thelistgenerate> createState() => _ThelistgenerateState();
}

class _ThelistgenerateState extends State<Thelistgenerate> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      currentindex = index;
                      widget.getindex(currentindex);
                    }),
                    child: Container(
                      height: 40,
                      width: index == 0
                          ? 80
                          : index == 1
                              ? 75
                              : 95,
                      decoration: BoxDecoration(
                        color:
                            currentindex == index ? Colors.red : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          widget.texts[index],
                          style: TextStyle(
                              color: currentindex == index
                                  ? Colors.white
                                  : Colors.red,
                              fontFamily: "inter",
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                )),
      ],
    );
  }
}
