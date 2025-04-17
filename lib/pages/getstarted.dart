import 'package:flutter/material.dart';
import 'package:food_ordering_system/service/widget_support.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState(); // fixed typo too
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 160.0),
        child: Column(
          children: [
            Image.asset('assets/images/chef-japanese.jpg'
            ),
            SizedBox(height: 30.0,),
            Text("Easy Makan",
              textAlign: TextAlign.center,
              style: AppWidget.HeadlineTextFeildStyle1(),
            ),
            SizedBox(height: 30.0,),
            Text("Fast & Easy food service",
              textAlign: TextAlign.center,
              style: AppWidget.HeadlineTextFeildStyle2(),
            ),
            SizedBox(height: 20.0,),
            Text("Our fastest food ordering system that serve you better",
              textAlign: TextAlign.center,
              style: AppWidget.HeadlineTextFeildStyle3(),
            ),
            SizedBox(height: 40.0,),
            Container(
              height: 60,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
              color: Color(0xFFFF0000),borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: Text(
                  "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
