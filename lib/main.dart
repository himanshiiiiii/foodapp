import 'package:flutter/material.dart';
import 'package:swiggy_clone/drawer_side.dart';
import 'package:swiggy_clone/homepage.dart';
// import 'package:swiggy_clone/search.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'Drawer': (context) => DrawerSide(),
        // 'Search': (context) => Search(),

      },
    );
  }
}
