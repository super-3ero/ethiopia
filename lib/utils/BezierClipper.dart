import 'package:flutter/cupertino.dart';

class BezierClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, size.height*0.85); //vertical line
    path.cubicTo(size.width/3, size.height, 2*size.width/3, size.height*0.7, size.width, size.height*0.85); //cubic curve
    path.lineTo(size.width, 0); //vertical line
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}