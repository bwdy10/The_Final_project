import 'package:flutter/material.dart';

class Thecontainerone extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final laptopchoice;

  const Thecontainerone(this.laptopchoice, {super.key});
  @override
  State<Thecontainerone> createState() => _ThecontaineroneState();
}

class _ThecontaineroneState extends State<Thecontainerone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.laptopchoice.image), fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
