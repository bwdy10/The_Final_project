import 'package:final_project/constants/colors.dart';
import 'package:final_project/widgets/widgetofhomescreen/Thepageview3.dart';
import 'package:final_project/widgets/widgetofhomescreen/caption1.dart';
import 'package:final_project/widgets/widgetofhomescreen/caption2.dart';
import 'package:final_project/widgets/widgetofhomescreen/listgenerate.dart';
import 'package:final_project/widgets/widgetofhomescreen/pageview.dart';
import 'package:final_project/widgets/widgetofhomescreen/pageview2.dart';
import 'package:final_project/widgets/widgetofhomescreen/textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final theme;

  const HomeScreen(this.theme, {super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageno = 0;
  int pagemo1 = 0;
  int pageno2 = 0;
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);
  final PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);
  final PageController pageController1 =
      PageController(initialPage: 0, viewportFraction: 0.9);

  int selectedcolortext() {
    return (widget.theme == false
        ? Managecolor.textcolorlightmode
        : Managecolor.textcolordarkmode);
  }

  int selectedcolorback() {
    return (widget.theme == false
        ? Managecolor.backcolorlightmode
        : Managecolor.backcolordarkmode);
  }

  _HomeScreenState();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 800,
          color: Color(selectedcolorback()),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Thepageview(pageController, (int value) {
                    setState(() {
                      pageno = value;
                    });
                  }),
                ),
                Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Thelistgenerate(pageno)),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 1,
                  child: Align(
                    alignment: const Alignment(-0.90, 0.0),
                    child: Text(
                      "Discover",
                      style: TextStyle(
                          color: Color(selectedcolortext()),
                          fontSize: 15,
                          fontFamily: "inter",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Flexible(
                    fit: FlexFit.loose, flex: 2, child: Thetextfield()),
                Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Thecaptionone(widget.theme, selectedcolortext()),
                    )),
                Thepageview2(widget.theme, _pageController, (int value) {
                  setState(() {
                    pagemo1 = value;
                  });
                }, selectedcolortext(), selectedcolorback()),
                Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Thrcaption2(widget.theme, selectedcolortext())),
                Thepageview3(pageController1, widget.theme, pageno2,
                    selectedcolortext(), selectedcolorback()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
