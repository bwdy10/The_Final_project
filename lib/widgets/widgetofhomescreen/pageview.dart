import 'package:final_project/constants/colors.dart';
import 'package:final_project/constants/images.dart';
import 'package:flutter/material.dart';

class Thepageview extends StatefulWidget {
  final PageController _pageController;
  // ignore: prefer_typing_uninitialized_variables

  final Function(int value) getnum;
  const Thepageview(this._pageController, this.getnum, {super.key});
  @override
  State<Thepageview> createState() => _ThepageviewState();
}

class _ThepageviewState extends State<Thepageview> {
  int finalpageno = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        width: 400,
        child: PageView.builder(
          controller: widget._pageController,
          onPageChanged: (value) => setState(() {
            // widget.pageno = value;
            finalpageno = value;
            widget.getnum(finalpageno);
          }),
          itemCount: imagesofsliders.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      imagesofsliders[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "24-hour only!",
                          style: TextStyle(
                              color: Color(Managecolor.textcolordarkmode),
                              fontSize: 20,
                              fontFamily: "inter",
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "take 30% off everything!",
                          style: TextStyle(
                              color: Color(Managecolor.textcolordarkmode),
                              fontSize: 15,
                              fontFamily: "inter",
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8, bottom: 20),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              minimumSize: const Size(25, 50),
                              backgroundColor: Colors.red),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(Managecolor.textcolordarkmode)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
