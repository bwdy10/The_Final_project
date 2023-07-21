import 'package:final_project/constants/colors.dart';
import 'package:flutter/material.dart';

class Thetextfield extends StatefulWidget {
  const Thetextfield({super.key});

  @override
  State<Thetextfield> createState() => _ThetextfieldState();
}

class _ThetextfieldState extends State<Thetextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.black,
            suffixIconColor: Colors.red,
            suffixIcon: const Icon(Icons.align_horizontal_center_rounded),
            hintText: "Search...",
            hintStyle: TextStyle(
                fontFamily: "inter",
                fontSize: 13,
                color: Color(Managecolor.textcolorlightmode),
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
