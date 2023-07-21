import 'package:flutter/material.dart';

class Thecontainertwo extends StatefulWidget {
  final themee;
  // ignore: prefer_typing_uninitialized_variables
  final laptopchoice;
  final int selectedcolortext;
  final int selectedcolorback;

  const Thecontainertwo(this.themee, this.laptopchoice, this.selectedcolortext,
      this.selectedcolorback,
      {super.key});
  @override
  State<Thecontainertwo> createState() => _ThecontainertwoState();
}

class _ThecontainertwoState extends State<Thecontainertwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: Color(widget.selectedcolorback),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.laptopchoice.captions,
                        style: TextStyle(
                            color: Color(widget.selectedcolortext),
                            fontFamily: "inter",
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.favorite_border,
                          size: 15,
                        )),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "1,95,780",
                    style: TextStyle(
                        color: Color(widget.selectedcolortext),
                        fontFamily: "inter",
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "rated",
                    style: TextStyle(
                        color: Color(widget.selectedcolortext),
                        fontFamily: "inter",
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: ListView(
                  children: [
                    ExpansionTile(
                      collapsedIconColor: Color(widget.selectedcolortext),
                      title: Text(
                        "Detail",
                        selectionColor: Color(widget.selectedcolorback),
                        style: TextStyle(
                            color: Color(widget.selectedcolortext),
                            fontFamily: "inter",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      children: [
                        Divider(
                          color: Color(widget.selectedcolortext),
                          height: 2,
                        ),
                        Container(
                          height: 150,
                          child: ListView.builder(
                            itemCount: widget.laptopchoice.detial.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.laptopchoice.detial[index],
                                style: TextStyle(
                                    color: Color(widget.selectedcolortext),
                                    fontFamily: "inter",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: ListView(
                  children: [
                    ExpansionTile(
                      collapsedIconColor: Color(widget.selectedcolortext),
                      title: Text(
                        "descraptions",
                        selectionColor: Color(widget.selectedcolortext),
                        style: TextStyle(
                            color: Color(widget.selectedcolortext),
                            fontFamily: "inter",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      children: [
                        Divider(
                          color: Color(widget.selectedcolortext),
                          height: 2,
                        ),
                        Container(
                          height: 150,
                          child: ListView.builder(
                            itemCount: widget.laptopchoice.descraptions.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.laptopchoice.descraptions[index],
                                style: TextStyle(
                                    color: Color(widget.selectedcolortext),
                                    fontFamily: "inter",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.red,
                      fixedSize: const Size(500, 70)),
                  child: const Text(
                    "Buy now",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "inter",
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
