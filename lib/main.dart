import 'package:flutter/material.dart';
import 'package:food_ordering_system/pages/getstarted.dart';
import 'package:food_ordering_system/pages/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering System',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
