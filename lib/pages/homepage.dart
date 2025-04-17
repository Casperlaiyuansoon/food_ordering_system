import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage>{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          child: Column(
            children: [
              Image.asset("assets/images/user.jpg", height: 60, width: 60, fit: BoxFit.cover,)
            ],
          ),)

      );
  }
  }
