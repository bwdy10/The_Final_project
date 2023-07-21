import 'package:final_project/constants/colors.dart';
import 'package:final_project/data/alldata.dart';
import 'package:final_project/widgets/widgetofsearchscreen/listgeneratewidget.dart';
import 'package:final_project/widgets/widgetofhomescreen/textfield.dart';
import 'package:final_project/widgets/widgetofsearchscreen/categorieswidget.dart';
import 'package:final_project/widgets/widgetofsearchscreen/gridviewwidget.dart';
import 'package:final_project/widgets/widgetofsearchscreen/searchwidget.dart';
import 'package:flutter/material.dart';

class Thesearchscreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final theme;
  const Thesearchscreen(this.theme, {super.key});

  @override
  State<Thesearchscreen> createState() => _ThesearchscreenState();
}

class _ThesearchscreenState extends State<Thesearchscreen> {
  List<String> texts = ["Best salleres", "Top rated", "recently viewed"];
  int currentindex = 0;
  List finallist = data.where((element) => element.bestseller == true).toList();
  getlist() {
    setState(() {
      if (currentindex == 0) {
        finallist =
            data.where((element) => element.bestseller == true).toList();
      } else if (currentindex == 1) {
        finallist = data.where((element) => element.toprated == true).toList();
      } else {
        finallist =
            data.where((element) => element.recenrlyviewerl == true).toList();
      }
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(selectedcolorback()),
          height: 800,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Thesearchtext(selectedcolortext),
              const Thetextfield(),
              Thecategorytext(selectedcolortext),
              Thelistgenerate(getlist, texts, (int index) {
                setState(() {
                  currentindex = index;
                  getlist();
                });
              }),
              Thegridview(finallist, selectedcolorback, selectedcolortext),
            ],
          ),
        ),
      ),
    );
  }
}
