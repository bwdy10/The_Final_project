import 'package:final_project/constants/colors.dart';
import 'package:flutter/material.dart';

class Therextfield extends StatefulWidget {
  const Therextfield({super.key});

  @override
  State<Therextfield> createState() => _TherextfieldState();
}

class _TherextfieldState extends State<Therextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 10),
      child: Material(
        shadowColor: Colors.black,
        elevation: 25,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.white)),
        child: TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white)),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25)),
              prefixIcon: const Icon(Icons.search),
              fillColor: Colors.white,
              filled: true,
              prefixIconColor: Colors.black,
              suffixIconColor: Colors.red,
              suffixIcon: const Icon(Icons.align_horizontal_center_rounded),
              hintText: "Find your perfect laptop",
              hintStyle: TextStyle(
                  fontFamily: "inter",
                  fontSize: 13,
                  color: Color(Managecolor.textcolorlightmode),
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
