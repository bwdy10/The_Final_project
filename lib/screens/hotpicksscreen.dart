import 'package:final_project/data/alldata.dart';
import 'package:final_project/widgets/widgetofhotpicketscreen/container1.dart';
import 'package:final_project/widgets/widgetofhotpicketscreen/container2.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Hotpicksscreen extends StatefulWidget {
  static String hotpicksroute = "hotpickscreen";

  const Hotpicksscreen({super.key});
  @override
  State<Hotpicksscreen> createState() => _HotpicksscreenState();
}

class _HotpicksscreenState extends State<Hotpicksscreen> {
  Widget build(BuildContext context) {
    @override
    final modelroute =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final thelaptopid = modelroute["id"];

    final theme = modelroute["them"];

    final laptopchoice = data.firstWhere((dataid) => dataid.id == thelaptopid);
    int selectedcolortext() {
      return (theme == false
          ? Managecolor.textcolorlightmode
          : Managecolor.textcolordarkmode);
    }

    int selectedcolorback() {
      return (theme == false
          ? Managecolor.backcolorlightmode
          : Managecolor.backcolordarkmode);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Thecontainerone(laptopchoice),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Thecontainertwo(theme, laptopchoice, selectedcolortext(),
                  selectedcolorback()),
            ),
          ],
        ),
      ),
    );
  }
}
