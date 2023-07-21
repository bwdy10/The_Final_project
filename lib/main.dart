import 'package:final_project/screens/hotpicksscreen.dart';
import 'package:final_project/screens/tabscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool them = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        '/': (context) => const Thetabscreen(),
        Hotpicksscreen.hotpicksroute: (context) => const Hotpicksscreen()
      },
    );
  }
}
