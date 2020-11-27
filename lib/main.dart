import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/screens/Login/Login.dart';
import 'package:work_space_ethiopia/screens/OnBoarding/on_boarding.dart';
import 'package:work_space_ethiopia/screens/SetUpProfile/SetUpProfile.dart';
import 'package:work_space_ethiopia/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Work Space',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor:  Color(0xfff2f3f6)
      ),
      home:OnBoarding(),
    );
  }

}

