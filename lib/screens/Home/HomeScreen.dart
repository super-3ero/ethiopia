import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Companies.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreen createState()=> _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      width: 300,
     child: companies(),
    );
  }

}