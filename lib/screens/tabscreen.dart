import 'package:final_project/constants/colors.dart';
import 'package:final_project/screens/acountscreen.dart';
import 'package:final_project/screens/homescreen.dart';
import 'package:final_project/screens/serachscreen.dart';
import 'package:final_project/screens/shoppingscreen.dart';
import 'package:final_project/widgets/widgetofhomescreen/Thedrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thetabscreen extends StatefulWidget {
  const Thetabscreen({super.key});

  @override
  State<Thetabscreen> createState() => _ThetabscreenState();
}

class _ThetabscreenState extends State<Thetabscreen> {
  bool them = false;

  int currentindex = 0;
  int selectedcolortext() {
    return (them == false
        ? Managecolor.textcolorlightmode
        : Managecolor.textcolordarkmode);
  }

  int selectedcolorback() {
    return (them == false
        ? Managecolor.backcolorlightmode
        : Managecolor.backcolordarkmode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: currentindex == 0
              ? Text(
                  "Home",
                  style: TextStyle(
                      color: Color(selectedcolortext()),
                      fontSize: 20,
                      fontFamily: "inter",
                      fontWeight: FontWeight.w700),
                )
              : null,
          actions: currentindex == 0
              ? [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.alarm_on_rounded,
                      color: Color(selectedcolortext()),
                    ),
                  )
                ]
              : null,
          elevation: 0,
          leading: currentindex == 0
              ? Builder(
                  builder: (context) => GestureDetector(
                    child: Icon(
                      Icons.format_align_left,
                      color: Color(selectedcolortext()),
                    ),
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
                )
              : null,
          backgroundColor: Color(selectedcolorback())),
      drawer: currentindex == 0
          ? Thedrawer((bool val) {
              setState(() {
                them = val;
              });
            }, selectedcolortext(), selectedcolorback())
          : null,
      body: currentindex == 0
          ? HomeScreen(them)
          : currentindex == 1
              ? Thesearchscreen(them)
              : currentindex == 2
                  ? const Theshoppingscreen()
                  : const Theaccountscreen(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CupertinoTabBar(
          activeColor: Colors.red,
          inactiveColor: Colors.grey,
          currentIndex: currentindex,
          backgroundColor: Color(selectedcolorback()),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined)),
          ],
          onTap: (value) => setState(() {
            currentindex = value;
          }),
        ),
      ),
    );
  }
}
